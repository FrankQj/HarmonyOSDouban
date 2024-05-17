import BaseView from './BaseView'
import display from '@ohos.display'
import {MovieViewModel, MovieRankListModel} from '../viewModel/MovieViewModel'
import MovieModel from '../viewModel/MovieModel'
import promptAction from '@ohos.promptAction';
import TouchableCardModel from '../viewModel/TouchableCardModel'
import TouchableCardViewModel from '../viewModel/TouchableCardViewModel'
import { TVDramaModel, TVDramaItem }  from '../viewModel/TVDramaModel'
import TVDramaViewModel from '../viewModel/TVDramaViewModel'
import ReadyToPlayViewModel from '../viewModel/ReadyToPlayViewModel'
import ReadyToPlayModel from '../viewModel/ReadyToPlayModel'
import CommonConstants from '../constants/CommonConstants'


@Component
export default struct BookVideo {

  @Provide
  screenWidth: number = 0 //屏幕宽度

  @State
  currentTabsIndex: number = 0 //当前选中的 tab

  @State
  currentMaginLeft: number = 0 //下划线需要隔左边的距离

  @State
  currentDuration: number = 0 //下划线动画到下一个位置需要的时间

  private tabsController: TabsController = new TabsController()


  aboutToAppear(){
    let displayClass: display.Display | null = null;
    try {
      displayClass = display.getDefaultDisplaySync()
      // console.info('------>height:'+displayClass.height)
      this.screenWidth = displayClass.width / displayClass.scaledDensity
    } catch (exception) {
      console.error('Failed to obtain the default display object. Code: ' + JSON.stringify(exception))
    }
  }

  @Builder TabBarBuilder(title: string, index: number) {
    Column(){
      Text(title)
        .fontSize(16)
        .fontColor(this.currentTabsIndex === index ?
          "#0D0D0D" :
          "#757575"
        )

    }
    .padding({left: 4, right: 4, top: 12})
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .height("48vp")
    .layoutWeight(1)
    .onClick(() => {
      this.currentDuration = 200 * Math.abs(this.currentTabsIndex - index)
      this.currentTabsIndex = index
      this.tabsController.changeIndex(index)
      this.currentMaginLeft = index * (this.screenWidth - 0) / CommonConstants.BOOK_VIDEO_TAB_TITLES.length
    })
  }

  build() {
    Column() {
      Row() {
        ForEach(CommonConstants.BOOK_VIDEO_TAB_TITLES, (title: string, index: number) => {
          this.TabBarBuilder(title, index)
        })
      }
      .width(CommonConstants.FULL_PARENT)
      .justifyContent(FlexAlign.SpaceBetween)
      // .margin({left: CommonConstants.COMMON_SPACE, right: CommonConstants.COMMON_SPACE})
      // .backgroundColor(Color.Yellow)

      Row() {
        Divider()
          .strokeWidth(3)
          .color(Color.Black)
          .width(36)
          .lineCap(LineCapStyle.Round)
      }
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.Center)
      .margin({left: this.currentMaginLeft})
      .animation({
        duration: this.currentDuration,
        curve: Curve.EaseOut
      })
      .width((this.screenWidth - 0) / CommonConstants.BOOK_VIDEO_TAB_TITLES.length)


      Tabs({
        barPosition: BarPosition.Start,
        controller: this.tabsController,
        index: 0
      }){ //标签容器

        //电影
        TabContent(){
          Movie()
        }
        // .tabBar(this.TabBarBuilder("动态", 0))


        //电视
        TabContent(){
          TVPlay()
        }
        // .tabBar(this.TabBarBuilder("推荐", 1))

        TabContent(){
          Books()
        }

        TabContent(){
          Serialization()
        }

        TabContent(){
          Podcast()
        }

        TabContent(){
          Music()
        }

        TabContent(){
          Local()
        }
      }
      .barHeight(0)
      // .barMode(BarMode.Scrollable)
      // .scrollable(false)
      .layoutWeight(1)
      .onChange((index: number) => {
        if (this.currentTabsIndex !== index) {
          this.currentDuration = 200 * Math.abs(this.currentTabsIndex - index)
          this.currentTabsIndex = index
          this.currentMaginLeft = index * (this.screenWidth - 24) / CommonConstants.BOOK_VIDEO_TAB_TITLES.length
        }
      })

    }
    .alignItems(HorizontalAlign.Start)
  }
}

//电影
@Component
struct Movie {

  build() {
    Column() {
      Divider()
      MovieCard()
        .margin({top: 20})
    }
    .width(CommonConstants.FULL_PARENT)
    .height(CommonConstants.FULL_PARENT)
    .margin({top: 1})
    .alignItems(HorizontalAlign.Start)

  }
}

@Component
struct MovieCard {

  @Consume
  screenWidth: number;

  @Builder buildPodcastView() {
    Stack() {
      Image('https://img1.doubanio.com/view/photo/l/public/p2899055868.webp')
        .width(CommonConstants.FULL_PARENT)
        .height(125)
        .objectFit(ImageFit.Cover)
        .borderRadius(6)

      Column() {
        Row() {
          Text("豆瓣播客")
            .fontSize(16)
            .fontWeight(700)
            .fontColor('#B3918F')
            .width("30%")

          Text("难道我们只能“完美”地长大成人？")
            .fontSize(22)
            .fontWeight(600)
            .fontColor("#EAE2E0")
            .width("70%")
            .textAlign(TextAlign.End)
        }
        .alignItems(VerticalAlign.Top)


        Row() {
          Text("专 访 《 年 少 日 记 》 导 演 卓 亦 谦")
            .align(Alignment.BottomStart)
            .fontSize(14)
            .fontWeight(500)
            .fontColor('#DACECC')

          Row() {
            Image($r('app.media.ic_start_play'))
              .width(15)
              .height(15)
              .margin({right: 4})

            Text('立即收听')
              .fontSize(14)
              .fontColor('#BCBCBC')
              .fontWeight(600)
          }
          .alignItems(VerticalAlign.Center)
          .justifyContent(FlexAlign.End)
          .backgroundColor(Color.Black)
          .padding(8)
        }
        .width(CommonConstants.FULL_PARENT)
        .alignItems(VerticalAlign.Center)
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .height(CommonConstants.FULL_PARENT)
      .width(CommonConstants.FULL_PARENT)
      .padding(15)
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .width(CommonConstants.FULL_PARENT)
    .height(125)
    .alignContent(Alignment.Start)
    .onClick(() => {

    })
  }

  build() {
    List({space: 40}) {
      //顶部 Tab
      ListItem() {
        TouchableCard({items: TouchableCardViewModel.movieDatas(), onPress: (title: string, index: number) => {

        }})
      }

      //影院热映
      ListItem() {
        HotTVDramaView({datas: TVDramaViewModel.movieDatas()})
      }

      //豆瓣播客
      ListItem() {
        this.buildPodcastView()
      }

      //即将上映的电影
      ListItem() {
        ReadyToShowView({datas: ReadyToPlayViewModel.movieDatas()})
      }

      //电影榜单
      ListItem() {
        RankListView({datas: MovieViewModel.movieRankList()})
      }
    }
    .padding({left: 12, right: 12})
    .scrollBar(BarState.Off)
  }
}

//电视
@Component
struct TVPlay {

  build() {
    Column() {
      Divider()
      TVPlayCard()
        .margin({top: 20})
    }
    .width(CommonConstants.FULL_PARENT)
    .height(CommonConstants.FULL_PARENT)
    .margin({top: 1})
    .alignItems(HorizontalAlign.Start)
  }
}

@Component
struct TVPlayCard {

  build() {
    List({space: 40}) {
      //顶部 Tab
      ListItem() {
        TouchableCard({ items: TouchableCardViewModel.TVPlayDatas(), onPress: (title: string, index: number) => {

        } })
      }

      //热门电视剧
      ListItem() {
        HotTVDramaView({datas: TVDramaViewModel.tvDatas()})
      }

      //即将上映的电视剧
      ListItem() {
        ReadyToShowView({datas: ReadyToPlayViewModel.tvDatas()})
      }

      //电视剧榜单
      ListItem() {
        RankListView({datas: MovieViewModel.tvRankList()})
      }

    }
    .alignListItem(ListItemAlign.Start)
    .scrollBar(BarState.Off)
    .margin({left: 12, right: 12})
  }
}

//读书
@Component
struct Books {

  build() {

  }
}


//连载
@Component
struct Serialization {

  build() {

  }
}


//播客
@Component
struct Podcast {

  build() {

  }
}


//音乐
@Component
struct Music {

  build() {

  }
}


//同城
@Component
struct Local {

  build() {

  }
}


/**
 * Tab卡片
 */
@Component
struct TouchableCard {
  private items: TouchableCardModel[] = []
  private onPress?: (title: string, index: number) => void
  @Consume
  screenWidth: number;

  build() {
    Row() {
      ForEach(this.items, (item: TouchableCardModel, index: number) => {
        Column({space: 3}) {
          Image($r('app.media.ic_tab_home_Normal'))
            .width(24)
            .height(24)
          Text(item.title)
            .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
            .fontColor("#878787")
        }
        .padding({top: 4, bottom: 4})
        .alignItems(HorizontalAlign.Center)
        .width((this.screenWidth - 60) / this.items.length)
        .borderRadius(10)
        .borderWidth(1)
        .borderColor("#EDEDED")
        .backgroundColor(Color.White)
        .onClick(() => {
          if (this.onPress) {
            this.onPress(item.title, index)
          }
        })
      })
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width(CommonConstants.FULL_PARENT)
  }
}

/**
 * 热门影视剧 View
 */
@Component
struct HotTVDramaView {

  @State
  currentTabIndex: number = 0;

  @State
  currentSubTabIndex: number = 0;


  @State
  followIndexes: string[] = []

  private datas: TVDramaModel[] = []

  @Builder buildMovieItemView(item: MovieModel) {
    Column({space: 5}) {
      Stack({alignContent: Alignment.TopStart}) {
        Image(item.image)
          .width(113)
          .height(158)
          .borderRadius(6)

        Row() {
          Image(!this.followIndexes.includes(item.name) ? $r('app.media.ic_add_follow') : $r('app.media.ic_selected'))
            .width(18)
            .height(18)
            .fillColor(Color.White)
        }
        .alignItems(VerticalAlign.Center)
        .justifyContent(FlexAlign.Center)
        .backgroundColor("#939393")
        .padding(5)
        .borderRadius({topLeft: 6, bottomRight: 6})
        .opacity(0.6)
        .onClick(() => {
          let toastString = "已添加到想看列表"
          if (!this.followIndexes.includes(item.name)) {
            this.followIndexes = [...this.followIndexes, item.name]
          } else {
            toastString = "已从想看列表中移除"
            let arr = this.followIndexes.slice()
            this.followIndexes =  arr.filter((value: string) => {
              return value !== item.name
            })
          }

          promptAction.showToast({message: toastString})
        })



      }


      Row() {
        if (item.hasPlaySource) {
          Image($r('app.media.ic_movie_play'))
            .fillColor(Color.Red)
            .width(13)
            .width(13)
            .margin({right: 4})
        }
        Text(item.name)
          .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
          .fontWeight(700)
          .width(item.hasPlaySource ? 96 : 110)
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })

      }

      Row() {
        Image($r('app.media.ic_rate_full_Normal'))
          .width(12)
          .height(12)
        Image($r('app.media.ic_rate_full_Normal'))
          .width(12)
          .height(12)
        Image($r('app.media.ic_rate_full_Normal'))
          .width(12)
          .height(12)
        Image($r('app.media.ic_rate_half_Normal'))
          .width(12)
          .height(12)

        Image($r('app.media.ic_rate_empty_Normal'))
          .width(12)
          .height(12)

        Text('' + item.vote)
          .margin({ left: 4 })
          .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
          .fontColor(Color.Orange)
      }
    }
    .alignItems(HorizontalAlign.Start)
  }

  build() {
    Column() {
      Row() {
        Row() {
          ForEach(this.datas, (tvDramaModel: TVDramaModel, index: number) => {
            Text(tvDramaModel.title)
              .fontSize(24)
              .fontWeight(this.currentTabIndex == index ? 600 : 400)
              .fontColor(this.currentTabIndex == index ? Color.Black : '#6F6F6F')
              .onClick(() => {
                this.currentTabIndex = index
                this.currentSubTabIndex = 0
              })

            if (index !== this.datas.length - 1) {
              Divider()
                .vertical(true)
                .height(22)
                .margin({left: 7, right: 7})
                .strokeWidth(1.5)
            }
          })
        }

        Row() {
          Text($r('app.string.total_num'))
            .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
            .fontWeight(700)
          Text(` ${this.datas[this.currentTabIndex].totalNums}`)
            .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
            .fontWeight(700)
            .margin({right: 4})
          Image($r('app.media.ic_right'))
            .width(13)
            .height(13)
            .fillColor('#1A1A1A')

        }
        .layoutWeight(1)
        .justifyContent(FlexAlign.End)
        .onClick(() => {

        })

      }
      .width(CommonConstants.FULL_PARENT)
      .justifyContent(FlexAlign.SpaceBetween)
      .alignItems(VerticalAlign.Center)

      if (this.datas[this.currentTabIndex].items.length > 1) {
        List({space: CommonConstants.COMMON_LIST_SPACE}) {
          ForEach(this.datas[this.currentTabIndex].items, (item: TVDramaItem, index: number) => {
            ListItem() {
              Row() {
                Text(item.subTitle)
                  .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
                  .fontColor(this.currentSubTabIndex === index ? $r('app.color.predominant_color') : Color.Black)
              }
              .alignItems(VerticalAlign.Center)
              .justifyContent(FlexAlign.Center)
              .padding(6)
              .borderRadius(CommonConstants.COMMON_BORDER_RADIUS)
              .backgroundColor(this.currentSubTabIndex === index ? "#DFF7E4" : $r('app.color.light_gray_bg_color'))
              .onClick(() => {
                this.currentSubTabIndex = index
              })

            }
          })
        }
        .scrollBar(BarState.Off)
        .listDirection(Axis.Horizontal)
        .margin({top: 20})
      }

      List({space: CommonConstants.COMMON_LIST_SPACE}) {
        ForEach(this.datas[this.currentTabIndex].items[this.currentSubTabIndex].items, (item: MovieModel) => {
          ListItem() {
            this.buildMovieItemView(item)
          }
        })

      }
      .listDirection(Axis.Horizontal)
      .margin({top: 20})
      .scrollBar(BarState.Off)
    }
    .alignItems(HorizontalAlign.Start)
  }
}

/**
 * 即将上映 View
 */
@Component
struct ReadyToShowView {

  @Consume
  screenWidth: number;

  private datas: ReadyToPlayModel[] = []


  @Builder builderMovieReadyToShowSingleView(title: string, count: number, subTitle: string,
                                             image1: string | Resource, image2: string | Resource, image3: string | Resource) {
    Column() {
      Row() {
        Column({space: 8}) {
          Row() {
            Text(title)
              .fontSize(20)
              .fontWeight(600)

            Image($r('app.media.ic_right'))
              .width(14)
              .height(14)
              .fillColor('#1A1A1A')
              .margin({left: 10})
          }
          .alignItems(VerticalAlign.Center)
          .justifyContent(FlexAlign.Start)

          Column({ space: 2 }) {
            Text(`近期有${count}部`)
              .fontSize(15)
              .fontColor("#878787")
            Text(subTitle)
              .fontSize(15)
              .fontColor("#878787")
          }
          .alignItems(HorizontalAlign.Start)
        }
        .alignItems(HorizontalAlign.Start)

        Stack() {
          Image(image3)
            .width(60)
            .height(72)
            .margin({ left: 150 })
            .borderRadius(CommonConstants.COMMON_BORDER_RADIUS)
          Image(image2)
            .width(60)
            .height(72)
            .margin({ left: 75 })
            .borderRadius(CommonConstants.COMMON_BORDER_RADIUS)
          Image(image1)
            .width(60)
            .height(72)
            .borderRadius(CommonConstants.COMMON_BORDER_RADIUS)
        }
      }
      .width(CommonConstants.FULL_PARENT)
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .width(CommonConstants.FULL_PARENT)
    .padding(12)
    .borderRadius(10)
    .borderWidth(1)
    .borderColor("#EDEDED")
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.SpaceBetween)
  }

  @Builder builderMovieReadyToShowHalfView(title: string, count: number, subTitle: string,
                                           image1: string | Resource, image2: string | Resource, image3: string | Resource) {
    Column() {
      Row() {
        Text(title)
          .fontWeight(700)

        Image($r('app.media.ic_right'))
          .width(13)
          .height(13)
          .fillColor('#1A1A1A')
      }
      .width(CommonConstants.FULL_PARENT)
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Column({space: 2}) {
          Text(`近期有${count}部`)
            .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
            .fontColor("#878787")
          Text(subTitle)
            .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
            .fontColor("#878787")
        }
        .alignItems(HorizontalAlign.Start)

        Stack() {
          Image(image3)
            .width(36)
            .height(50)
            .margin({ left: 40 })
            .borderRadius(CommonConstants.COMMON_BORDER_RADIUS)
          Image(image2)
            .width(36)
            .height(50)
            .margin({ left: 20 })
            .borderRadius(CommonConstants.COMMON_BORDER_RADIUS)
          Image(image1)
            .width(36)
            .height(50)
            .borderRadius(CommonConstants.COMMON_BORDER_RADIUS)
        }
      }
      .width(CommonConstants.FULL_PARENT)
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({top: 8})
    }
    .width((this.screenWidth - 34) / 2.0)
    .padding(10)
    .borderRadius(10)
    .borderWidth(1)
    .borderColor("#EDEDED")
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.SpaceBetween)
  }

  build() {
    List({space: CommonConstants.COMMON_LIST_SPACE}) {
      ForEach(this.datas, (item: ReadyToPlayModel) => {
        ListItem(){
          if (this.datas.length > 1) {
            this.builderMovieReadyToShowHalfView(item.title, item.totalNum, item.subTitle,
              item.imageTop, item.imageMiddle, item.imageBottom)
          } else {
            this.builderMovieReadyToShowSingleView(item.title, item.totalNum, item.subTitle,
              item.imageTop, item.imageMiddle, item.imageBottom)
          }
        }
      })
    }
    .listDirection(Axis.Horizontal)
    .scrollBar(BarState.Off)
  }
}

/**
 * 榜单 View
 */
@Component
struct RankListView {

  private datas: MovieRankListModel[] = []

  @Builder buildMovieRankListView(item: MovieRankListModel) {
    Stack() {
      Image(item.items[0].postCardImages[0])
        .width(280)
        .height(220)
        .borderRadius(8)


      Row() {

      }
      .width(CommonConstants.FULL_PARENT)
      .height(CommonConstants.FULL_PARENT)
      .linearGradient({
        direction: GradientDirection.Top,
        colors: [[0x31353B, 0.0], [0x31353B, 0.55], [Color.Transparent, 1.0]]
      })
      .borderRadius(8)

      Column() {
        Row() {
          Text(item.title)
            .fontColor(Color.White)
            .fontSize(22)
            .fontWeight(700)

          Text($r('app.string.douban_rank_ist'))
            .fontColor(Color.White)
            .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
        }
        .width(CommonConstants.FULL_PARENT)
        .justifyContent(FlexAlign.SpaceBetween)


        Column({space: 12}) {
          ForEach(item.items.slice(0, 3), (movie: MovieModel, index: number) => {
            Row({space: 12}) {
              Text(`${index + 1}`)
                .fontColor(Color.White)

              Image(movie.image)
                .width(30)
                .height(40)
                .borderRadius(CommonConstants.COMMON_BORDER_RADIUS)

              Column({space: 6}) {
                Text(movie.name)
                  .fontColor(Color.White)
                  .fontSize(15)
                Row() {
                  Image($r('app.media.ic_rate_full_Normal'))
                    .width(12)
                    .height(12)
                  Image($r('app.media.ic_rate_full_Normal'))
                    .width(12)
                    .height(12)
                  Image($r('app.media.ic_rate_full_Normal'))
                    .width(12)
                    .height(12)
                  Image($r('app.media.ic_rate_half_Normal'))
                    .width(12)
                    .height(12)

                  Image($r('app.media.ic_rate_empty_Normal'))
                    .width(12)
                    .height(12)

                  Text(`${movie.vote}`)
                    .margin({ left: 8 })
                    .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
                    .fontColor(Color.Orange)
                }
                .justifyContent(FlexAlign.Start)
              }
              .alignItems(HorizontalAlign.Start)
            }
            .justifyContent(FlexAlign.Start)
          })
        }
        .alignItems(HorizontalAlign.Start)
      }
      .height(CommonConstants.FULL_PARENT)
      .padding(20)
      .alignItems(HorizontalAlign.Start)
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .width(280)
    .height(220)

  }

  build() {
    List({space: 12}) {
      ForEach(this.datas, (item: MovieRankListModel) => {
        ListItem() {
          this.buildMovieRankListView(item)
        }
      })

      ListItem() {
        Column({space: 2}) {
          Text($r('app.string.more'))
            .textAlign(TextAlign.Center)
            .fontSize(17)
            .width(20)
            .fontColor("#757575")

          Image($r('app.media.ic_right'))
            .width(13)
            .height(13)
            .fillColor('#1A1A1A')

        }
        .height(220)
        .padding({left: 20, right: 20})
        .alignItems(HorizontalAlign.Center)
        .justifyContent(FlexAlign.Center)
        .borderRadius(8)
        .backgroundColor("#EFEFEF")
      }
    }
    .listDirection(Axis.Horizontal)
    .scrollBar(BarState.Off)
  }
}