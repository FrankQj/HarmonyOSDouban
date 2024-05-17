import { BaseModel, BookVideoType } from './BaseModel'

export default class BookModel extends BaseModel {
  readonly   hasSellSource: Boolean
  readonly  isNewUp: Boolean

  constructor(image: string | Resource, name: string, vote: number, describe: string, isFollowed: Boolean = false, hasSellSource: Boolean = false, isNewUp: Boolean = false) {
    super(image, name, vote, describe, BookVideoType.Reading, isFollowed)
    this.hasSellSource = hasSellSource
    this.isNewUp = isNewUp
  }
}