import Home from '../view/Home'
import BookVideo from '../view/BookVideo'
import Group from '../view/Group'
import Market from '../view/Market'
import Mine from '../view/Mine'
import BaseView from '../view/BaseView'
import display from '@ohos.display'
import router from '@ohos.router'
import CommonConstants from '../constants/CommonConstants'


@Entry
@Component
struct Index {

  @State
  currentTabsIndex: number = 0
  private tabsController: TabsController = new TabsController()

  @State
  screenHeight: number = 0

  // aboutToAppear(){
  //   let displayClass: display.Display | null = null;
  //   try {
  //     displayClass = display.getDefaultDisplaySync()
  //     console.info('------>width:'+display.getDefaultDisplaySync().width)
  //     console.info('------>displayClass:'+ JSON.stringify(displayClass))
  //     // console.info('------>height:'+displayClass.height)
  //     console.info('------>height:'+display.getDefaultDisplaySync().height)
  //     this.screenHeight = displayClass.height / displayClass.scaledDensity
  //   } catch (exception) {
  //     console.error('Failed to obtain the default display object. Code: ' + JSON.stringify(exception))
  //   }
  // }

  @Builder TabBarBuilder(title: string | Resource, index: number, selectedImg: Resource, normalImg: Resource) {
    Column(){
      Image(this.currentTabsIndex === index ? selectedImg : normalImg)
        .width("25vp")
        .height("25vp")
        .fillColor(this.currentTabsIndex === index ?
        $r('app.color.predominant_color') :
        $r('app.color.tab_bar_title_color'))
      Text(title)
        .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
        .fontColor(this.currentTabsIndex === index ?
                $r('app.color.predominant_color') :
                $r('app.color.tab_bar_title_color')
        )
        .margin({top: 4})
    }
    .width("100%")
    .justifyContent(FlexAlign.Center)
    .height("56vp")
    // .onClick(() => {
    //   this.currentTabsIndex = index
    //   this.tabsController.changeIndex(index)
    // })
  }

  build() {
    Column() {
      BaseView({onPress: () => {
        router.pushUrl({url: "pages/SearchPage"})
      }})
        .margin({top: 8})

      Tabs({
        barPosition: BarPosition.End,
        controller: this.tabsController
      }){ //标签容器

        //首页
        TabContent(){
          Home()
        }
        .tabBar(this.TabBarBuilder($r('app.string.home'), CommonConstants.HOME_TAB_INDEX, $r('app.media.ic_home_selected'),
          $r('app.media.ic_tab_home_Normal')))

        //书影音
        TabContent(){
          BookVideo()
        }
        .tabBar(this.TabBarBuilder($r('app.string.book_movie_video'), CommonConstants.BOOKVIDEO_TAB_INDEX, $r('app.media.ic_tab_subjects_selected_Normal'),
          $r('app.media.ic_tab_subjects_Normal')))

        //小组
        TabContent(){
          Group()
        }
        .tabBar(this.TabBarBuilder($r('app.string.group'), CommonConstants.GROUP_TAB_INDEX, $r('app.media.ic_tab_groups_selected_Normal'),
          $r('app.media.ic_tab_groups_Normal')))

        //市集
        TabContent(){
          Market()
        }
        .tabBar(this.TabBarBuilder($r('app.string.market'), CommonConstants.MAKET_TAB_INDEX, $r('app.media.ic_tab_market_selected_Normal'),
          $r('app.media.ic_tab_market_Normal')))

        //我的
        TabContent(){
          Mine()
        }
        .tabBar(this.TabBarBuilder($r('app.string.mine'), CommonConstants.MINE_TAB_INDEX, $r('app.media.ic_tab_male_selected_Normal'),
          $r('app.media.ic_tab_male_Normal')))

      }
      // .height(this.screenHeight - 88)
      .layoutWeight(1)
      .scrollable(false)
      .vertical(false)
      .onTabBarClick((index: number) => {
        if (index === 4) {
          this.tabsController.changeIndex(this.currentTabsIndex)
          router.pushUrl({url: "pages/LoginPage"})
        } else {
          this.currentTabsIndex = index
        }
      })
    }

  }
}