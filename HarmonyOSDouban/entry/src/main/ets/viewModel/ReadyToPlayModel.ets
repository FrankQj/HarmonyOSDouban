export default class ReadyToPlayModel {
  readonly   imageBottom: string | Resource
  readonly   imageMiddle: string | Resource
  readonly   imageTop: string | Resource
  readonly   title: string
  readonly   totalNum: number
  readonly   subTitle: string


  constructor(title: string, subTitle: string, totalNum: number,
              imageTop: string | Resource, imageMiddle: string | Resource,
              imageBottom: string | Resource) {
    this.title = title
    this.subTitle = subTitle
    this.totalNum = totalNum
    this.imageTop = imageTop
    this.imageMiddle = imageMiddle
    this.imageBottom = imageBottom
  }
}