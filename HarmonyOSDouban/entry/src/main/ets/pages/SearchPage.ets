import router from '@ohos.router';
import display from '@ohos.display';

@Entry
@Component
struct  SearchPage {
  @State
  listDatas: string[] = ['计划男', '高级波段', '高级趋势', '高级反转', 'price action', '期货', '股票']
  private scroller: Scroller = new Scroller()
  @State
  searchValue: string = ""

  @Builder
  SearchBarViewBuilder() {
    Column() {
      Row() {
        Search({ placeholder: "大地方是认为欧皇", value: this.searchValue })
          .placeholderColor($r('app.color.search_bar_placeholder_color'))
          .backgroundColor($r('app.color.search_bar_bg_color'))
          .width(300)
          .height(40)
          .cancelButton({style: CancelButtonStyle.INPUT})
          .searchIcon({ size: $r('app.float.menu_image_size'),
            color: $r('app.color.search_icon_color'), src: $r('app.media.ic_search') })


        Blank()

        Text("取消")
          .fontColor($r('app.color.predominant_color'))
          .fontSize(17)
          .onClick(() => {
            router.back()
          })

      }
      .padding({ left: 15, right: 15 })
      .width("100%")

      Divider()
        .width("100%")
    }
  }

  @Builder
  HistoryViewBuilder() {
    Column() {
      Row() {
        Text("历史")
          .fontColor(Color.Black)
          .fontSize(14)
          .fontWeight(700)
          .margin({right: 8})

        Scroll(this.scroller) {
          Row({ space: 7 }) {
            ForEach(this.listDatas, (item: string) => {
              Row() {
                Text(item)
                  .fontColor(Color.Black)
                  .fontSize(16)
              }
              .backgroundColor($r('app.color.light_gray_bg_color'))
              .borderRadius(3)
              .padding(3)
              .onClick(() => {
                this.searchValue = item
              })
            })

            if (this.listDatas.length > 0) {
              Text("|")
                .fontColor("#B2B2B2")
              Image($r('app.media.ic_trash'))
                .width(20)
                .height(20)
                .fillColor("#9E9E9D")
                .onClick(() => {
                  this.listDatas = []

                })
            }
          }
          .justifyContent(FlexAlign.Start)
        }
        .scrollable(ScrollDirection.Horizontal)
        .scrollBar(BarState.Off)
        .edgeEffect(EdgeEffect.Spring)
        // .width("89%")
        .align(Alignment.Start)
        .onScroll((event) => {

        })
        .layoutWeight(1)
      }
      .padding({top: 8, left: 8, right: 8})
      .height(42)
      .width("100%")

      Row() {
        Text("历史")
          .fontSize(14)
          .fontWeight(600)
          .margin({ right: 8 })
          .visibility(Visibility.Hidden)

        Divider()
          .layoutWeight(1)
      }
      .padding({left: 8, right: 8})
      .margin({top: 3, bottom: 3})
      .width("100%")
      .height(1)
    }
  }

  build() {
    Column() {
      this.SearchBarViewBuilder()
      this.HistoryViewBuilder()
    }
  }
}