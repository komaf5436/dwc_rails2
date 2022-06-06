class ListsController < ApplicationController
  def new
    # viewへ渡すためのインスタンス変数に空のmodelオブジェクトを生成する。
    @list = List.new
  end
  
  def create
    # データを受け取り新規登録するためのインスタンス作成
    @list = List.new(list_params)
    # データをデータベースに保存するためのsaveメソッド実行
    if @list.save
    # データが入力されていれば詳細画面へリダイレクト
      redirect_to list_path(@list.id)
    else
    # データが入力されていなければ新規投稿画面を表示する
      render :new
    end
  end

  def index
    # allメソッドはテーブルに保存されている全てのレコードを取得
    @lists = List.all
  end

  def show
    # findメソッドは引数を受け取り、idカラムを引数と比べてレコードを取得
    @list = List.find(params[:id])
  end

  def edit
    # findメソッドは引数を受け取り、idカラムを引数と比べてレコードを取得
    @list = List.find(params[:id])
  end
  
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end
  
  def destroy
    # データを1件取得
    list = List.find(params[:id])
    # データを削除
    list.destroy
    # 一覧画面へ
    redirect_to '/lists'
  end
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
