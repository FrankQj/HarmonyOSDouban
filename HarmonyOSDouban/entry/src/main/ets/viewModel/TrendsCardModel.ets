import User from './User'
import { BaseModel } from './BaseModel'

@Observed
export default  class TrendsCardModel {
  public user: User
  public updateTime: string
  public  model: BaseModel

  constructor(user: User, updateTime: string, model: BaseModel) {
    this.user = user
    this.updateTime = updateTime
    this.model = model
  }

}