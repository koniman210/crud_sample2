class UsersController < ApplicationController
#新規作成アクション
  def new
  @user = User.new
end
#新規登録
def create
  User.create(user_params)
end
#詳細
def show
  @user = User.find(params[:id])
end
#一覧画面
def index
@users = User.all
end
#更新
def update
  user = User.find(params[:id])
  user.update(user_params)

end
#編集
def edit
  @user = User.find(params[:id])
end
#削除
def destroy
  user = User.find(params[:id])
  user.delete
end




private
#名前と年齢以外のデータは受け付けない
def user_params
  params.require(:user).permit(:name,:age)
end
end
