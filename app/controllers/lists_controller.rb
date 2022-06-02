class ListsController < ApplicationController
  def new
    # viewへ渡すためのインスタンス変数に空のmodelオブジェクトを生成
    @list = List.new
  end

  def index
  end

  def show
  end

  def edit
  end
end
