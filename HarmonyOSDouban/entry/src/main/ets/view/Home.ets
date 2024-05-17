import { Level } from '@ohos/hypium'
import BaseView from './BaseView'
import CommonConstants from '../constants/CommonConstants'
import { BaseModel, BookVideoType } from '../viewModel/BaseModel'
import TrendsCardModel from '../viewModel/TrendsCardModel'
import User from '../viewModel/User'
import TrendsCardViewModel from '../viewModel/TrendsCardViewModel'

@Component
export default struct Home {
  @State
  currentTabsIndex: number = 1
  private tabsController: TabsController = new TabsController()

  @Builder TabBarBuilder(title: string, index: number) {
    Column(){
      Text(title)
        .fontSize(20)
        .fontColor(this.currentTabsIndex === index ?
        "#0D0D0D" :
        "#757575"
        )
        .fontWeight(600)
        .margin({top: 4, bottom: 6})

      Divider()
        .strokeWidth(3)
        .color(Color.Black)
        .width(36)
        .margin({bottom: 0.5})
        .opacity(this.currentTabsIndex === index ? 1 : 0)
        .lineCap(LineCapStyle.Round)
    }
    .padding({left: 8, right: 8})
    .width(100)
    .justifyContent(FlexAlign.End)
    .alignItems(HorizontalAlign.Center)
    .height("56vp")
    .onClick(() => {
      this.currentTabsIndex = index
      this.tabsController.changeIndex(index)
    })
  }

  build() {
    Column() {
      Row() {
        this.TabBarBuilder("动态", 0)
        this.TabBarBuilder("推荐", 1)
      }
      // .backgroundColor(Color.Yellow)

      Tabs({
        barPosition: BarPosition.Start,
        controller: this.tabsController,
        index: 1
      }){ //标签容器

        //动态
        TabContent(){
          Trends()
        }
        // .tabBar(this.TabBarBuilder("动态", 0))


        //推荐
        TabContent(){
          Recommend()
        }
        // .tabBar(this.TabBarBuilder("推荐", 1))
      }
      .barHeight(0)
      // .barMode(BarMode.Scrollable)
      .scrollable(false)
      .layoutWeight(1)

    }
    .alignItems(HorizontalAlign.Start)
  }
}

@Component
struct Trends {

  @State trendsDatas: TrendsCardModel[] = TrendsCardViewModel.trendsDatas()

  build() {
    Column() {
      Divider()
      List() {
        ForEach(this.trendsDatas, (item: TrendsCardModel) => {
          ListItem() {
            TrendsCard({item: item})
          }
        })
      }
      .scrollBar(BarState.Off)

    }
    .width(CommonConstants.FULL_PARENT)
    .height(CommonConstants.FULL_PARENT)
    .backgroundColor("#EDEFED")
  }
}

@Component
struct TrendsCard {

  @State
  isLike: Boolean = false

  @ObjectLink
  item: TrendsCardModel

  build() {
    Column({space: 12}) {

      //卡片标题栏
      Row({space: 8}) {
        Image(this.item.user.image)
          .width(35)
          .height(35)
          .borderRadius(4)

        Column({space: 3}) {
          Row() {
            Text(this.item.user.name)
              .fontSize(17)
              .fontWeight(500)

            Blank()
              .layoutWeight(1)

            Image($r('app.media.ic_share_more_Normal'))
              .width(20)
              .height(20)
              .fillColor("#ABABAB")
              .onClick( () => {

              })
          }
          .justifyContent(FlexAlign.SpaceBetween)

          Row(){
            Text(this.item.updateTime)
              .fontSize(13)
              .fontColor("#C4C4C4")
            Text(' | ')
              .fontSize(13)
              .fontColor("#C4C4C4")
            Text(this.item.model.type === BookVideoType.Reading ? '想读' : this.item.model.type === BookVideoType.Looking ? '想看' : '想听')
              .fontSize(13)
              .fontColor("#C4C4C4")
          }
        }
        .alignItems(HorizontalAlign.Start)
        .layoutWeight(1)
      }
      .alignItems(VerticalAlign.Center)

      //卡片内容栏
      Row() {
        Row({space: 12}) {
          Image(this.item.model.image)
            .width(46)
            .height(70)
            .borderRadius(4)

          Column({space: 4}) {
            Text(this.item.model.name)
              .fontWeight(600)
              .maxLines(2)
              .textOverflow({ overflow: TextOverflow.Ellipsis })

            if (this.item.model.subName.length > 0) {
              Text(this.item.model.subName)
                .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
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
              Image($r('app.media.ic_rate_full_Normal'))
                .width(12)
                .height(12)

              Image($r('app.media.ic_rate_empty_Normal'))
                .width(12)
                .height(12)

              Text(`${this.item.model.vote}`)
                .margin({left: 4})
                .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
                .fontColor(Color.Orange)
            }
            Text(this.item.model.describe)
              .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
              .fontColor("#818383")
              .maxLines(1)
              .textOverflow({ overflow: TextOverflow.Ellipsis })

          }
          .width("65%")
          .alignItems(HorizontalAlign.Start)
          .justifyContent(FlexAlign.Start)
        }
        .alignItems(VerticalAlign.Center)

        Column({space: 8}) {
          if (this.item.model.isFollowed) { //已关注
            Image($r('app.media.ic_selected'))
              .width(20)
              .height(20)
              .fillColor("#ABABAB")

            Text('已' + (this.item.model.type === BookVideoType.Reading ? '想读' : this.item.model.type === BookVideoType.Looking ? '想看' : '想听'))
              .fontColor("#ABABAB")
              .fontSize(13)
          } else { //未关注
            Image($r('app.media.ic_add_follow'))
              .width(20)
              .height(20)
              .fillColor(Color.Orange)
              .onClick(() => {
                this.item.model.isFollowed = true
              })

            Text(this.item.model.type === BookVideoType.Reading ? '想读' : this.item.model.type === BookVideoType.Looking ? '想看' : '想听')
              .fontColor(Color.Orange)
              .fontSize(13)
          }

        }
      }
      .width(CommonConstants.FULL_PARENT)
      .backgroundColor($r('app.color.light_gray_bg_color'))
      .borderRadius(6)
      .justifyContent(FlexAlign.SpaceBetween)
      .padding(8)
      .onClick(() => {
        console.log("跳转到详情页面")
      })

      //卡片操作栏
      Row() {
        Row({space: 5}) {
          Image($r('app.media.ic_like'))
            .width(20)
            .height(20)
            .fillColor(this.isLike ? Color.Green : "#7A7A7A")

          Text(this.isLike ? '1' : $r('app.string.like'))
            .fontColor("#828282")
        }
        .width(50)
        .alignItems(VerticalAlign.Center)
        .onClick(() => {
          console.log("赞")
          this.isLike = !this.isLike
        })

        Row({space: 5}) {
          Image($r('app.media.ic_reply'))
            .width(20)
            .height(20)
            .fillColor("#7A7A7A")

          Text($r('app.string.reply'))
            .fontColor("#828282")
        }
        .width(50)
        .alignItems(VerticalAlign.Center)
        .onClick(() => {
          console.log("回复")
        })

        Row({space: 5}) {
          Image($r('app.media.ic_repost'))
            .width(20)
            .height(20)
            .fillColor("#7A7A7A")

          Text($r('app.string.repost'))
            .fontColor("#828282")
        }
        .width(50)
        .alignItems(VerticalAlign.Center)
        .onClick(() => {
          console.log("转发")
        })
      }
      .width(CommonConstants.FULL_PARENT)
      .justifyContent(FlexAlign.SpaceEvenly)
    }
    .width(CommonConstants.FULL_PARENT)
    .padding({left: 14, right: 14, top: 12, bottom: 12})
    .backgroundColor(Color.White)
    .margin({top: 14})
    .alignItems(HorizontalAlign.Start)
  }
}

@Component
struct Recommend {

  build() {
    Column() {
      Divider()

      List() {
        ListItem() {
          RecommendCard()
        }

        ListItem() {
          RecommendCard()
        }

      }
      .scrollBar(BarState.Off)
    }
    .width(CommonConstants.FULL_PARENT)
    .height(CommonConstants.FULL_PARENT)
    .alignItems(HorizontalAlign.Start)
    .backgroundColor("#EDEFED")
  }
}

@Component
struct RecommendCard {

  @State
  isLike: Boolean = false

  build() {
    Column({space: 12}) {

      //卡片标题栏
      Row({space: 8}) {
        Image($r('app.media.ic_tab_male_Normal'))
          .width(28)
          .height(28)

        Text('谁是战国枭雄')
          .fontSize(17)
          .fontWeight(500)

        Blank()
          .layoutWeight(1)

        Image($r('app.media.ic_share_more_Normal'))
          .width(20)
          .height(20)
          .fillColor("#ABABAB")
          .onClick( () => {

          })
      }
      .width(CommonConstants.FULL_PARENT)
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.SpaceBetween)

      //卡片内容栏
      Row() {
        Column({space: 8}) {
          // Row() {
            RichText('<p style="font-size: 42px;font-weight: bold">林志玲<p style="font-size: 40px">与名人最不可思议的一次邂逅<br/>16年在台北 101<br/>姐姐好美</p></p>')
              .width(CommonConstants.FULL_PARENT)
              .height(113)
            // Text('林志玲')
            //   .fontWeight(600)
            //   .backgroundColor(Color.Green)
            // Text('与名人最不可思议的一次邂逅\n16年在台北 101\n姐姐好美')
            //   .backgroundColor(Color.Yellow)
          // }
          // .layoutWeight(1)

          Row() {
            Image('https://img9.doubanio.com/view/photo/l/public/p2248259146.webp')
              .width(110)
              .height(110)
              .borderRadius({topLeft: 8, bottomLeft: 8})

            Image('https://img9.doubanio.com/view/photo/l/public/p2248259124.webp')
              .width(110)
              .height(110)

            Image('https://img1.doubanio.com/view/photo/l/public/p2248259088.webp')
              .width(110)
              .height(110)
              .borderRadius({topRight: 8, bottomRight: 8})
          }
          .width(CommonConstants.FULL_PARENT)
          .justifyContent(FlexAlign.SpaceBetween)
        }


      }
      .width(CommonConstants.FULL_PARENT)

      //卡片操作栏
      Row() {
        Row({space: 5}) {
          Image($r('app.media.ic_like'))
            .width(20)
            .height(20)
            .fillColor(this.isLike ? Color.Green : "#7A7A7A")

          Text(this.isLike ? '1' : $r('app.string.like'))
            .fontColor("#828282")
        }
        .width(50)
        .alignItems(VerticalAlign.Center)
        .onClick(() => {
          console.log("赞")
          this.isLike = !this.isLike
        })

        Row({space: 5}) {
          Image($r('app.media.ic_reply'))
            .width(20)
            .height(20)
            .fillColor("#7A7A7A")

          Text($r('app.string.reply'))
            .fontColor("#828282")
        }
        .width(50)
        .alignItems(VerticalAlign.Center)
        .onClick(() => {
          console.log("回复")
        })

        Row({space: 5}) {
          Image($r('app.media.ic_repost'))
            .width(20)
            .height(20)
            .fillColor("#7A7A7A")

          Text($r('app.string.repost'))
            .fontColor("#828282")
        }
        .width(50)
        .alignItems(VerticalAlign.Center)
        .onClick(() => {
          console.log("转发")
        })
      }
      .width(CommonConstants.FULL_PARENT)
      .justifyContent(FlexAlign.SpaceEvenly)
    }
    .width(CommonConstants.FULL_PARENT)
    .padding({left: CommonConstants.COMMON_SPACE, right: CommonConstants.COMMON_SPACE, top: 12, bottom: 12})
    .backgroundColor(Color.White)
    .margin({top: 14})
    .alignItems(HorizontalAlign.Start)
  }
}