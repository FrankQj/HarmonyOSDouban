import { BaseModel, BookVideoType } from './BaseModel'

export default class MovieModel extends BaseModel {
  readonly   hasPlaySource: Boolean
  readonly  isNewUp: Boolean
  readonly postCardImages: string[]

  constructor(image: string | Resource, name: string, vote: number, describe: string, isFollowed: Boolean = false, hasPlaySource: Boolean = false, isNewUp: Boolean = false, postCardImages: string[] = []) {
    super(image, name, vote, describe, BookVideoType.Looking, isFollowed)
    this.hasPlaySource = hasPlaySource
    this.isNewUp = isNewUp
    this.postCardImages = postCardImages
  }
}