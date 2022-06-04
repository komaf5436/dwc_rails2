# アプリケーションを作成しよう

## コントローラ作成
rails g controller コントローラ名 アクション名1 アクション名2...
コントローラ名の後に作成したいアクション名を追記すると、コントローラ内、viewファイル、ルーティングに追加される。

## アクション
### new
データの新規作成フォームを表示する

### create
データを追加(保存)する

### index
データの一覧を表示する

### show
データの内容(詳細)を表示する

### edit
データを更新するためのフォームを表示する

### update
データを更新する

### destroy
データを削除する

## HTTPリクエスト
### GET
データの取得(ページ自体もデータ)

### POST
新しいデータの作成

### PUT
既存のテータの更新

### PATCH
既存のデータの一部更新

### DELETE
既存のデータを削除

## form_withヘルパー
セキュリティ対策などが組み込まれた安全なHTMLのformタグを作成でき、またRailsの機能を最大限生かすことが可能。
<%から始まるタグは、Rubyで使用されるタグである。
<% %>では、タグ内の結果がHTMLに変換されずに処理される。
<%= %>では、タグ内の結果がHTMLに変換される。
### url
どのURLへフォームの情報を送信するか

### method
HTTPメソッドを

## インスタンス・ローカル変数
### インスタンス変数
変数の名前の先頭に@マークをつける
コントローラーとviewでデータの受け渡しができる

### ローカル変数
変数の名前の先頭には何もつけない
コントローラーとviewでデータの受け渡しができない

## ストロングパラメータ
指定されたデータしか保存されないよう設定する