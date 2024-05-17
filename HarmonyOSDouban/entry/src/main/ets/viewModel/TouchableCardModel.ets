export default class TouchableCardModel {
  readonly   image: string | Resource
  readonly   title: string


  constructor(image: string | Resource, title: string) {
    this.image = image
    this.title = title
  }
}