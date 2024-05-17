export default  class User {
  readonly name: string
  readonly image: string | Resource

  constructor(name: string, image: string | Resource) {
    this.name = name
    this.image = image
  }
}