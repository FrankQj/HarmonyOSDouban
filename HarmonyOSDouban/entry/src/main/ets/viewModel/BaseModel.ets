
export enum BookVideoType {
  Reading,
  Looking,
  Listening
}

@Observed
export class BaseModel {
  readonly   image: string | Resource
  readonly   name: string
  readonly subName: string
  readonly   vote: number
  readonly describe: string
  isFollowed: Boolean
  readonly type: BookVideoType

  constructor(image: string | Resource, name: string, vote: number, describe: string, type: BookVideoType, isFollowed: Boolean = false, subName: string = "") {
    this.image = image
    this.name = name
    this.vote = vote
    this.describe = describe
    this.isFollowed = isFollowed
    this.type = type
    this.subName = subName
  }
}