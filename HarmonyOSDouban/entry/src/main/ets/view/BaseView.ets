@Component
export default  struct BaseView {

  private onPress?: () => void;
  private hidesearchBar: Boolean = false;

  build() {
    Row() {
      Button() {
        Image($r("app.media.icons8_menu"))
          .fillColor($r('app.color.predominant_color'))
          .width('100%')
          .height('100%')
      }
      .width($r('app.float.menu_image_size'))
      .height($r('app.float.menu_image_size'))
      .backgroundColor(Color.Transparent)

      // TextInput({placeholder: '电影频道'})
      //   .placeholderColor("#")
      //   .backgroundColor($r('app.color.search_bar_bg_color'))
      //   .borderRadius(15)
      //   .width(200)
      //   .height(40)
      Row(){
        Image($r('app.media.ic_search'))
          .fillColor($r('app.color.search_icon_color'))
          .width($r('app.float.menu_image_size'))
          .height($r('app.float.menu_image_size'))

        Text('豆瓣Top250电影排行版揭晓')
          .fontColor($r('app.color.search_bar_placeholder_color'))
          .maxLines(1)
          .textOverflow({overflow: TextOverflow.Ellipsis})
          .margin({left: 4, right: 12})

      }
      .padding(10)
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.Center)
      .backgroundColor($r('app.color.search_bar_bg_color'))
      .width(200)
      .height(36)
      .borderRadius(10)
      .onClick(() => {
        if (this.onPress) {
          this.onPress()
          console.log("baseView on press")
        }
      })
      .opacity(this.hidesearchBar ? 0 : 1)

      Button() {
        Image($r('app.media.ic_headphones'))
          .fillColor($r('app.color.predominant_color'))
          .width('100%')
          .height('100%')
      }
      .width($r('app.float.menu_image_size'))
      .height($r('app.float.menu_image_size'))
      .backgroundColor(Color.Transparent)

      Button() {
        Image($r('app.media.ic_mail'))
          .fillColor($r('app.color.predominant_color'))
          .width('100%')
          .height('100%')
      }
      .width($r('app.float.menu_image_size'))
      .height($r('app.float.menu_image_size'))
      .backgroundColor(Color.Transparent)
    }
    .width('100%')
    .height("40vp")
    .justifyContent(FlexAlign.SpaceEvenly)
    .alignItems(VerticalAlign.Center)
  }
}