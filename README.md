## sandbox-lisp

## 環境構築

- [MacでCommon Lisp環境を整える - qiita](https://qiita.com/komi1230/items/6956301f789870d53bf30)

## LispSandbox

### よくある質問

#### 関数実行方方

```fish
$ ros run

> (load "hogeFile.lisp")
```


## Lisp Documentation

### グローバル変数の定義

```lisp
; 変数
(defparameter HOGE attribute) 

; 定数
(defvar hoge attribute)
```
#### 命名規則

- グローバル変数には耳あてをつける
    - example `*hoge*`
    - アスタリスクに関しては特に意味があるわけではなく、好まれて記述されているため、反する意味は無いと思う

### 独自関数

```lisp
(defun function_name (arguments) ...)
```

### NILとは

`(eq nil ())`

メモリの番地先がない場合がNILとして扱われるみたいな。

すべてがリスト構造として扱われている



