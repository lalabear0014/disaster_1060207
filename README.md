# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

1.簡單描述 Gemfile 的用途是? (10%)
設定Rails應用程式會使用哪些Gems套件。

2.簡單描述 Migration 的目的和原理是?(10%)
目的：Migrations（資料庫遷移）可以讓你用 Ruby 程式來修改資料庫結構。相較於直接進資料庫系統使用 SQL 修改結構(例如使用 phpMyAdmin 工具來修改)，使用 Migrations 可以讓我們有記錄地進行資料庫修改，每次變更就是一筆 Migration 記錄，且Migrations 會自動追蹤變更，可以輕易的同步最新的資料庫結構。
原理:修改資料庫或資料表，執行rails db:migrate會實際在資料庫修改這個欄位。

3.簡單描述什麼是 RESTful 路由?(10%)
REST的概念來建立一整組的命名路由(named routes)
使用比較標準化的方式來命名跟組織Controllers和Actions。
