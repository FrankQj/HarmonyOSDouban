import User from './User'

export class GroupModel {

  readonly title: string
  readonly subTitle: string
  readonly image: string | Resource
  readonly discussions: GroupDiscussionModel[]

  constructor(title: string, subTitle: string, image: string | Resource, discussions: GroupDiscussionModel[] = []) {
    this.title = title
    this.subTitle = subTitle
    this.image = image
    this.discussions = discussions
  }

}

export class GroupDiscussionModel {

  readonly title: string
  readonly author: User
  readonly createTime: string
  readonly content: string
  readonly responseCount: number
  readonly response: GroupResponseDiscussionModel[]

  constructor(title: string, author: User, content: string,
              createTime: string, responseCount: number, response: GroupResponseDiscussionModel[] = []) {
    this.title = title
    this.author = author
    this.content = content
    this.createTime = createTime
    this.responseCount = responseCount
    this.response = response
  }

}

export class GroupResponseDiscussionModel {

  readonly responder: User
  readonly createTime: string
  readonly content: string
  readonly link: GroupResponseDiscussionModel

  constructor(responder: User, createTime: string, content: string, link: GroupResponseDiscussionModel) {
    this.responder = responder
    this.createTime = createTime
    this.content = content
    this.link = link
  }

}

