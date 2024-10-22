; ===================================================================


; 【使用說明】

; 請將此檔案拖曳至圖面中，然後輸入指令:"lia"。

; 【更新日誌】

; 2024/10/14 V2.6.2
; 新增函數註解

; 2024/08/09 V2.5.7
; 更新函數"c:lict"，新增特例處理函數

; 2024/08/08 V2.5.6
; 更新函數"c:lict"，生成額外文字
; 刪除函數"c:lili"

; 2024/08/01 V2.5.5
; 更新函數"c:lict"，生成表格前提示輸入對應的樓層
; 新增函數"c:lili"，測試函數功能

; 2024/07/22 V2.5.4
; 更新參數"block:list"

; 2024/07/18 V2.5.3
; 更新參數"block:list"
; 移除函數"數量總表"

; 2024/07/15 V2.5.3 SN
; 新增函數"c:lisave"

; 2024/07/11 V2.5.2 SN
; 更新函數:數量總表(Line 1904)
; 更新文本之翻譯

; 2024/07/09 V2.5.1
; 調整文字型式修改的時機

; 2024/07/09 V2.5.0
; 完整總表代碼
; 調整"block:list"與"block-rename"代碼
; 加入數量總表測試碼
; 程式正名"AutoLISP應用程式"

; 2024/07/05 V2.5.0 SN
; 新增總表指令

; 2024/07/02 V2.4.4 SN
; 新增圖層篩選條件至圖塊計算指令
; 加入總表指令測試

; 2024/06/21 V2.4.3
; 改變計算管線時輸出的小數點位及移除部分程式碼

; 2024/06/20 V2.4.2
; 新增指令"zz"
; 改善計算圖塊數量的表格處理

; 2024/06/12 V2.4.1
; 更新圖塊名稱時，若新名稱已存在，則更新圖塊名稱時，在最末端添加"+"
; 調整選取的圖塊比例
; 調整GUI

; 2024/05/31 V2.4.0
; 修正Line344、Line358
; 更新GUI功能

; 2024/05/30 V2.3
; 新增:
; GUI功能。

; 2024/05/28 V2.2.5
; 新增:
; <計算類>指令。

; 2024/05/24 V2.2.4
; 修正:
; 指令lirb執行時的邏輯錯誤。


; ===================================================================

; 用於設定出圖配置的指令函數
(defun c:zz ( / obj)
  (vl-cmdf "_mspace")
  
  (setq obj (ssget))
  (vl-cmdf "_.ZOOM" "O" obj "")
  (vl-cmdf "_pspace")
  (princ)
)

; ===================================================================

; 用於呼叫程式面板的指令"lia" (必須安裝軟體OpenDCL才能使用)
(defun C:lia ( / )
  (command "OPENDCL")
  (setq project
    '("YWt6AxAcAAAWnKTrBuKT5xMWJRtquYGXhAwTrekLJFh2MElL5RWtyheka/sXlebLE6TaW737eOXa"
"s+RK09OTzKjQK2qtac6c5PT0XPZh+LBwAv+fWY/9UXI57wBmPTo7eJT0Rm6qUOCN2hcM4Si2+782"
"t3PHx4EFsA3gyY0FkLPDW69lL66JHn2UnzpZ+J+7bpPjBnRgip16/AqiNhn5n7lNZr5eF21ULq4I"
"34syoS8hMiuzSfm1JeMmdelHdLj0I2t2Lvc/8ONLPC8KflCbf4cCPlmJq9/k/Ci88mCE0z1HYync"
"eMsKGlgTXAVHxB//5QpH49ffeKvvlFgBUYcn+vGWPupdqOyIdsFUjEwvZ/WOlG9vxbcI9vBw78sF"
"Q1ylHA9TarcyIXHrLt6ZOGj+ycXelu77i/PUt5DZ758vL6juxQAkufMuoOqK1tq5WmPrims34eqK"
"3NqZWuPVLZUBWgU2rPSagVs0nYMikc4cPQiCanH3TFcAugjreCOHYkdUBRe8QDs5tHDjxILZd8X2"
"gc/aQe+KOeyAKRSxIKuqmkncf7Om/S/knXTkqXS0VptV63FqPVwY+sCEY8qlW5o/B9B1RFavPOqL"
"8Rz6iOKDPzDuUzhU9axYoDQV3Pij0g2rd9qyUvDBTQAHPCc0ijjqRVGXAtfJjBZ5Kw+LU84toZOO"
"L919iqc9pniu1eRrfen1Ng+RNqb1J8lbijXSpVuF0dQEiU2A7Si9NvUzYSsgtcvrR0KwwK0Vn1nZ"
"6vC1bfu2ac2PgyUhBZgihJbUg00R4IWZqJiO3NWsiLWPSVxZaaCVTJ4iGfWrpm0W0QmQ+Qwh3Li9"
"4jnTN+QljvrqabPsEO8K7dpfm9viXXE2XerqTV+oBGs0CcUXj5o7sPaGnB66qNfNaSiEE94HRz8V"
"6uECQi4MWm5B6j6DPqyZWoPA2n1l02nTKILskKGW85BkLUJep4VaQ1W7gQMdyhyEOLwh8qhLN4H4"
"QivCA9SMp2lDMJWn59xgG0uvUOT5ZudPrixdrdz7st2mMpgkphcDhspRAlW2Qv7lMBh37WfkIc/p"
"R+Twu0eyDcEAomkAtqkcczBYDShaD0j6ipuy7J9yZEelVwoU4qsWn5InEgN7muKiWCm+TJiS9lFK"
"IZuZ4MNOhLsG313nSRiTkdARuObFGpjQPrOixTYhmBRMsj9dDVs82bjiJ3UNNaayoovgW5HTHJAA"
"ogqYkEsToi1o8KOnaIxQ4cRAhJkNz0W1NZCELQFH5L0TbdCgRvno2ZkikmEhBaDI0zNbzQZoFGgp"
"7sBS5E1SPF31uzzZuBzLaGgBvhhoR4HAjbEkybeLEYmBoxkMYXPmy6i9eiMbW+PT25X6hIHjto1a"
"kGojhAwp459wZMdVakRLkNTKDinUpYSBo1C5jIpInxAZ4kWL7WhY8QWnGgG76zKkb9Y31TEdrNRM"
"2j9dFzs82TjkN3UX8yXu6G2aqX5RCRNtrHjmyhvJyePhLOixImaCnYf88EYRmV2hwAYLQKmo97nX"
"kG+0uB/v7X1cBf3qud2KD+37oSJm18s9GpnpVX3KiayL7l0rLdqneymZn5ClBId31H9xCNKkGdnz"
"hheEHEWRXdFkzxxxieH3gmb3608t531IMboBks+IZoGCsuWRAodApv4/1A32lJ1EYM+hnRlxdQeO"
"AS/Q/aHGUgrrR+wp96XfIFt8F8I05kzVeiwhWwaFcYHtrwA="))
  (dcl_project_import project nil nil)
  (dcl_Form_Show ui_main)
  (princ)
)

; 該部分是面板按鈕的觸發函數
(defun c:ui/main/close#OnClicked (/)
  (dcl_Form_Close ui_main)
  (princ)
)

(defun c:ui/main/TextButton1#OnClicked (/)
  (c:lic1)
  (c:lic2)
  (c:lic3)
  (c:lic4)
  (c:lic5)
  (c:lic6)
)
(defun c:ui/main/TextButton2#OnClicked (/)
  (c:lif)
)
(defun c:ui/main/TextButton3#OnClicked (/)
  (c:scsetting)
)
(defun c:ui/main/TextButton4#OnClicked (/)
  (c:lirb)
)
(defun c:ui/main/TextButton5#OnClicked (/)
  (c:lict)
)
(defun c:ui/main/TextButton6#OnClicked (/)
  (c:lito)
)
(defun c:ui/main/TextButton7#OnClicked (/)
  (c:管線)
)


; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

; 清圖專用的函數
(defun c:lic1()
  (setq curScaleUnit (getvar "INSUNITS"))
  (if (/= curScaleUnit 1)
    (progn
      (setvar "INSUNITS" 1)
      (princ "已將單位設置為英吋。")
    )
    (princ "圖面單位已經是英吋。")
  )
  (princ)
)

(defun c:lic2()
  (command "ucsicon" "off" "navvcube" "off" "gridmode" "0")
  (princ "已將不常用的UI隱藏。")
  (princ)
)

(defun c:lic3()
  (command "layon" "layuniso" "laythw")
  (vl-load-com)
  (setq layers (vla-get-layers (vla-get-activedocument (vlax-get-acad-object))))
  (vlax-for layer layers
    (vla-put-lock layer 0)
  )
  (princ "已將所有圖層可見性開啟、取消隔離、解凍並解鎖。")
  (princ)
)

(defun c:lic4()  
  (setq vha (ssget "X" '((0 . "HATCH"))))
  (if vha
    (progn
      (setq i 0)
      (repeat (sslength vha)
        (setq obj (ssname vha i))
        (if obj
          (entdel obj)
        )
        (setq i (1+ i))
      )
      (princ "已移除填充線。")
    )
    (princ "沒有找到填充線。")
  )
  (princ)
)

(defun c:lic5()
  (repeat 10 (command "purge" "a" "" "n" ""))
  (princ "已執行指令。")
  (princ)
)

(defun c:lic6()
  (command "layer" "new" "00底圖" "c" "8" "00底圖" "")
  (princ "【系統】已建立圖層，且顏色為8。")
  (princ)
)

; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

; 用於製作聚合線之間的半徑的指令函數
(defun c:lif (/ ss en n fa)
  (setq ss(ssget )
fa(getdist "\n輸入圓角半徑... "))
         (setvar "FilletRAD" fa)
  (setq n 0)
  (repeat (sslength ss)
    (setq en (ssname ss n))
                   (command ".FILLET"  "p" en)
    (setq n (+ 1 n))
  )
   (princ)
)
; 用於調整圖塊比例的指令函數
(defun c:scsetting (/ ss i ent obj scaleFactor)
  (setq ss (ssget '((0 . "INSERT"))))
  (setq scaleFactor (getreal "\n輸入比例: "))
  (if ss
    (progn

      (setq i 0)
      (while (< i (sslength ss))
        (setq ent (ssname ss i))

        (setq obj (vlax-ename->vla-object ent))

        (vlax-put obj 'XScaleFactor scaleFactor)
        (vlax-put obj 'YScaleFactor scaleFactor)
        (vlax-put obj 'ZScaleFactor scaleFactor)
        (setq i (1+ i))
      )
      (princ (strcat "\n所有選取的圖塊比例已修改為 " (rtos scaleFactor 2 2)))
    )
    (princ "\n沒有選取到任何圖塊。")
  )
  (princ)
)

; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

; 用於更新圖塊名稱的指令函數
(defun c:lirb ()
  (block-rename block:list)
  (alert "已完成圖塊名稱更新。請開始計算圖塊。")
  (princ)
)

; 子函數
(defun block-exists (blockName)
  (if (tblsearch "BLOCK" blockName)
    T
    nil
  )
)

; 子函數
(defun block-rename (blockList)
  (foreach blockPair blockList
    (if (block-exists (cadr blockPair))
        (if (block-exists (caddr blockPair))
          (command "_.RENAME" "Block" (cadr blockPair) (strcat (caddr blockPair) "+"))
          (command "_.RENAME" "Block" (cadr blockPair) (caddr blockPair))
        )
        (princ (strcat "\n圖塊名稱 " (cadr blockPair) " 不存在！執行下一項..."))
    )
  )
)

; 子函數
; 參數格式: { [新名稱] [舊名稱] [編號名稱] [安裝高度] (備註) }
; 範例: ("彩色攝影機" "彩色攝影機" "01001彩色攝影機" "FL+260~300CM" " ")
; 注意: 必須至少留一格空格！
(setq block:list
  '(

    (" " "緊急壓扣" "緊急求救按鈕" " " " ")

    ("彩色攝影機" "彩色攝影機" "01001彩色攝影機" "FL+260~300CM" " ")
    ("高解析攝影機" "高解析攝影機" "01002高解析攝影機" "FL+260~300CM" " ")
    ("高解析攝影機(含雨罩)" "高解析攝影機(含雨罩)" "01003高解析攝影機(含雨罩)" "FL+260~300CM" " ")
    ("全功能彩色攝影機" "全功能攝影機" "01004全功能彩色攝影機" "配合現場施作" " ")
    ("吸頂式彩色攝影機" "吸頂式攝影機" "01005吸頂式彩色攝影機" "配合現場施作" " ")
    ("長距離攝影機" "長距離攝影機" "01006長距離攝影機" "FL+260~300CM" " ")
    ("彩色攝影機(含防雨罩)" "彩色攝影機(含防雨罩)" "01007彩色攝影機(含防雨罩)" "FL+260~300CM" " ")
    ("彩色攝影機(含旋轉座)" "彩色攝影機(含旋轉座)" "01008彩色攝影機(含旋轉座)" "FL+260~300CM" " ")
    ("三軸海螺型攝影機" "三軸海螺型攝影機" "01009三軸海螺型攝影機" "配合現場施作" " ")
    ("日夜型攝影機(含防雨罩)" "日夜型攝影機(含防雨罩)" "01010日夜型攝影機(含防雨罩)" "FL+260~300CM" " ")
    ("夜視型攝影機(含防雨罩)" "夜視型攝影機(含防雨罩)" "01011夜視型攝影機(含防雨罩)" "FL+260~300CM" " ")
    ("攝影機(預留管線)" "攝影機(預留管線)" "01012攝影機(預留管線)" "FL+260~300CM" " ")
    ("小型彩色攝影機" "小型彩色攝影機" "01013小型彩色攝影機" "FL+260~300CM" " ")
    ("數位錄影主機" "數位錄影主機" "01014數位錄影主機" "配合現場施作" "電源 AC 110V")
    ("網路影像錄影主機" "網路影像錄影主機" "01015網路影像錄影主機" "配合現場施作" "電源 AC 110V")
    ("監視管理系統主機" "監視管理系統" "01016監視管理系統主機" "配合現場施作" "電源 AC 110V")
    ("攝影機預留接線盒" "攝影機預留接線盒" "01017攝影機預留接線盒" "配合現場施作" " ")
    ("數位錄影主機預留接線盒" "數位錄影主機預留接線盒" "01018數位錄影主機預留接線盒" "配合現場施作" " ")
    ("網路影像錄影主機預留接線盒" "網路影像錄影主機預留接線盒" "01019網路影像錄影主機預留接線盒" "配合現場施作" " ")

    ("旋轉警示燈(紅色)" "旋轉警示燈(紅色)" "02001旋轉警示燈(紅色)" "FL+240CM" " ")
    ("立柱式旋轉警示燈(紅色)" "立柱式旋轉警示燈(紅色)" "02002立柱式旋轉警示燈(紅色)" "配合現場施作" " ")
    ("紅綠燈" "紅綠燈" "02003紅綠燈" "配合現場高度" " ")
    ("倒數計時紅綠燈" "倒數計時紅綠燈" "02004倒數計時紅綠燈" "配合現場高度" " ")
    ("單一綠燈" "單一綠燈" "02005單一綠燈" "配合現場高度" " ")
    ("單一紅燈" "單一紅燈" "02006單一紅燈" "配合現場高度" " ")
    ("車道設備控制器" "車道設備控制器" "02007車道設備控制器" "FL+140CM" "電源 AC 110V")
    ("三向車道設備控制器" "三向車道設備控制器" "02008三向車道設備控制器" "FL+140CM" "電源 AC 110V")
    ("柵欄機" "柵欄機" "02009柵欄機" "配合現場施作" "電源 AC 110V或220V 依現場設備需求提供")
    ("感應線圈" "感應線圈" "02010感應線圈" "配合現場施作" " ")
    ("連動線圈" "連動線圈" "02011連動線圈" "配合現場施作" " ")
    ("車道防下壓紅外線" "車道防下壓紅外線" "02012車道防下壓紅外線" "間距配合現場施作 高度60CM" " ")
    ("車道相對紅外線" "車道相對紅外線" "02013車道相對紅外線" "間距80CM 高度60CM" " ")
    ("反射鏡" "反射鏡" "02014反射鏡" "無須配管" " ")
    ("旋轉警示燈(黃色)" "旋轉警示燈(黃色)" "02015旋轉警示燈(黃色)" "FL+240CM" " ")
    ("長距離讀卡機" "長距離讀卡機" "02016長距離讀卡機" "配合現場施作" " ")
    ("ETAG讀頭" "ETAG讀頭" "02017ETAG讀頭" "配合現場施作" " ")
    ("公共捲門感知器" "公共捲門感知器" "02018公共捲門感知器" "配合現場施作" " ")
    ("注意機車標示燈" "注意機車標示燈" "02019注意機車標示燈" "FL+240CM" "電源 AC 110V")
    ("注意來車標示燈" "注意來車標示燈" "02020注意來車標示燈" "FL+240CM" "電源 AC 110V")
    ("行車人員指示燈" "行車人員指示燈" "02021行車人員指示燈" "配合現場施作" " ")
    ("出車警示燈" "出車警示燈" "02022出車警示燈" "配合現場施作" " ")
    ("入口滿車燈(具車位計數顯示器)" "入口滿車燈(具車位計數顯示器)" "02023入口滿車燈(具車位計數顯示器)" "配合現場施作" " ")
    ("車輪擋" "車輪擋" "02024車輪擋" "配合現場施作" " ")
    ("防撞護角" "防撞護角" "02025防撞護角" "配合現場施作" " ")
    ("反光標鈕" "反光標鈕" "02026反光標鈕" "配合現場施作" " ")
    ("車位架" "車位架" "02027車位架" "配合現場施作" " ")
    ("減速墊" "減速墊" "02028減速墊" "配合現場施作" " ")
    ("自動取票機" "自動取票機" "02029自動取票機" "配合現場施作" "電源 AC 110V")
    ("自動收票機" "自動收票機" "02030自動收票機" "配合現場施作" "電源 AC 110V")
    ("自動繳費機" "自動繳費機" "02031自動繳費機" "配合現場施作" "電源 AC 110V")
    ("計價收費電腦" "計價收費電腦" "02032計價收費電腦" "配合現場施作" "電源 AC 110V")
    ("尚餘車位燈箱(室外)" "尚餘車位燈箱(室外)" "02033尚餘車位燈箱(室外)" "配合現場施作" " ")
    ("尚餘車位燈箱(室內)" "尚餘車位燈箱(室內)" "02034尚餘車位燈箱(室內)" "配合現場施作" " ")
    ("反向尋車查詢器" "反向尋車查詢器" "02035反向尋車查詢器" "配合現場施作" " ")
    ("反向尋車偵測器-1對2" "反向尋車偵測器-1對2" "02036反向尋車偵測器-1對2" "配合現場施作" " ")
    ("反向尋車偵測器-1對3" "反向尋車偵測器-1對3" "02037反向尋車偵測器-1對3" "配合現場施作" " ")
    ("反向尋車控制器" "反向尋車控制器" "02038反向尋車控制器" "配合現場施作" " ")
    ("超聲波探測器" "超聲波探測器" "02039超聲波探測器" "配合現場施作" " ")
    ("多功能感應器" "多功能感應器" "02040多功能感應器" "配合現場施作" " ")
    ("超音波多功能感應器" "超音波多功能感應器" "02041超音波多功能感應器" "配合現場施作" " ")
    ("LED導引顯示幕" "LED導引顯示幕" "02042LED導引顯示幕" "配合現場施作" " ")
    ("分隔桿" "分隔桿" "02043分隔桿" "配合現場施作" " ")
    ("公共捲門感知器預留接線盒" "公共捲門感知器預留接線盒" "02044公共捲門感知器預留接線盒" "配合現場施作" " ")
    ("旋轉警示燈(紅色)預留接線盒" "旋轉警示燈(紅色)預留接線盒" "02045旋轉警示燈(紅色)預留接線盒" "配合現場施作" " ")
    ("紅綠燈預留接線盒" "紅綠燈預留接線盒" "02046紅綠燈預留接線盒" "配合現場施作" " ")
    ("E-TAG讀頭預留接線盒" "E-TAG讀頭預留接線盒" "02047E-TAG讀頭預留接線盒" "配合現場施作" " ")
    ("出車警示燈預留接線盒" "出車警示燈預留接線盒" "02048出車警示燈預留接線盒" "配合現場施作" " ")
    ("入口滿車燈(具車位計數顯示器)預留接線盒" "入口滿車燈(具車位計數顯示器)預留接線盒" "02049入口滿車燈(具車位計數顯示器)預留接線盒" "配合現場施作" " ")

    ("中央監控系統主機" "中央監控系統主機" "03001中央監控系統主機" "配合現場施作" "電源 AC 110V")
    ("水箱蓋警報偵測器" "水箱蓋警報偵測器" "03002水箱蓋警報偵測器" "配合現場施作" " ")
    ("水位偵測器" "水位偵測器" "03003水位偵測器" "配合現場施作" " ")
    ("油位偵測器" "油位偵測器" "03004油位偵測器" "配合現場施作" " ")
    ("磁簧開關(公共)" "磁簧開關(公共)" "03005磁簧開關(公共)" "配合現場施作" " ")
    ("三極式電極棒" "三極式電極棒" "03006三極式電極棒" "配合現場施作" " ")
    ("緊急求救按鈕(公共)" "緊急求救按鈕(公共)" "03007緊急求救按鈕(公共)" "FL+120CM" " ")
    ("緊急求救按鈕(H90)(公共)" "緊急求救按鈕(H90)(公共)" "03008緊急求救按鈕(H90)(公共)" "FL+90CM" " ")
    ("緊急求救按鈕(H15)(公共)" "緊急求救按鈕(H15)(公共)" "03009緊急求救按鈕(H15)(公共)" "FL+15CM" " ")
    ("夜光型求救鈕" "夜光型求救鈕" "03010夜光型求救鈕" "FL+120CM" " ")
    ("拉式求救警報器" "拉式求救警報器" "03011拉式求救警報器" "FL+100CM" " ")
    ("無線求救接收器" "無線求救接收器" "03012無線求救接收器" "FL+240CM" " ")
    ("反脅迫接收主機" "反脅迫接收主機" "03013反脅迫接收主機" "FL+240CM" " ")
    ("SMART KEY反脅迫接收主機" "SMART KEY反脅迫接收主機" "03014SMART KEY反脅迫接收主機" "FL+240CM" " ")
    ("閃光喇叭" "閃光喇叭" "03015閃光喇叭" "FL+240CM" "單聯 直式 BOX")
    ("震撼喇叭" "震撼喇叭" "03016震撼喇叭" "FL+240CM" " ")
    ("一氧化碳偵測器" "一氧化碳偵測器" "03017一氧化碳偵測器" "天花板下" " ")
    ("一氧化碳偵測器(顯示型)" "一氧化碳偵測器(顯示型)" "03018一氧化碳偵測器(顯示型)" "FL+180CM" "單聯 BOX")
    ("圍牆相對紅外線" "圍牆相對紅外線" "03019圍牆相對紅外線" "配合圍牆" " ")
    ("強力探照燈" "強力探照燈" "03020強力探照燈" "配合現場施作" " ")
    ("圍牆防盜拉力線" "圍牆防盜拉力線" "03021圍牆防盜拉力線" "配合圍牆" " ")
    ("雙鑑式紅外線" "雙鑑式紅外線" "03022雙鑑式紅外線" "配合現場施作" " ")
    ("紅外線空間偵測器" "紅外線空間偵測器" "03023紅外線空間偵測器" "配合現場施作" " ")
    ("巡邏設定器" "巡邏設定器" "03024巡邏設定器" "FL+120CM" "單聯 直式 BOX")
    ("溫濕度感應器" "溫濕度感應器" "03025溫濕度感應器" "配合現場施作" " ")
    ("六合一空氣品質偵測器" "六合一空氣品質偵測器" "03026六合一空氣品質偵測器" "配合現場施作" " ")
    ("流水感知器" "流水感知器" "03027流水感知器" "配合現場施作" " ")
    ("微動開關" "微動開關" "03028微動開關" "配合現場施作" " ")
    ("漏水檢知貼片" "漏水檢知貼片" "03029漏水檢知貼片" "配合現場施作" " ")
    ("漏水檢知器" "漏水檢知器" "03030漏水檢知器" "配合現場施作" " ")
    ("淹水偵測器" "淹水偵測器" "03031淹水偵測器" "配合現場施作" " ")
    ("數位電表" "數位電表" "03032數位電表" "配合現場施作" " ")
    ("數位水表" "數位水表" "03033數位水表" "配合現場施作" " ")
    ("土壤偵測器" "土壤偵測器" "03034土壤偵測器" "配合現場施作" " ")
    ("雨水電動蝶閥預留接線盒" "雨水電動蝶閥預留接線盒" "03035雨水電動蝶閥預留接線盒" "配合現場施作" " ")

    ("門禁系統主機" "門禁系統主機" "04001門禁系統主機" "配合現場施作" "電源 AC 110V")
    ("多功能指紋機" "多功能指紋機" "04002多功能指紋機" "FL+120CM" " ")
    ("不銹鋼開門按鈕" "開門按鈕" "04003不銹鋼開門按鈕" "FL+120CM" "單聯 直式 BOX")
    ("不銹鋼開門按鈕(附防水盒)" "不銹鋼開門按鈕(附防水盒)" "04004不銹鋼開門按鈕(附防水盒)" "FL+120CM" "單聯 直式 BOX")
    ("非接觸式開門按鈕" "非接觸式開門按鈕" "04005非接觸式開門按鈕" "FL+120CM" "單聯 直式 BOX")
    ("非接觸式開門按鈕(附防水盒)" "非接觸式開門按鈕(附防水盒)" "04006非接觸式開門按鈕(附防水盒)" "FL+120CM" "單聯 直式 BOX")
    ("電鎖" "電鎖" "04007電鎖" "配合現場門位" " ")
    ("陰極鎖" "陰極鎖" "04008陰極鎖" "配合現場門位" " ")
    ("感應式讀卡機" "感應式讀卡機" "04009感應式讀卡機" "FL+120CM" "單聯 直式 BOX")
    ("感應式讀卡機(附防水盒)" "感應式讀卡機(附防水盒)" "04010感應式讀卡機(附防水盒)" "FL+120CM" "單聯 直式 BOX")
    ("門禁控制器" "門禁控制器" "04011門禁控制器" "配合現場施作" " ")
    ("指靜脈門禁管理機" "指靜脈門禁管理機" "04012指靜脈門禁管理機" "FL+120CM" " ")
    ("自動門感應器" "自動門感應器" "04013自動門感應器" "配合現場施作" " ")
    ("虹膜辨識器" "虹膜辨識器" "04014虹膜辨識器" "配合現場施作" " ")
    ("臉型辨識器" "臉型辨識器" "04015臉型辨識器" "配合現場施作" " ")
    ("SMART KEY主機" "SMART KEY" "04016SMART KEY主機" "FL+120CM" "單聯 直式 BOX")
    ("SMART KEY(附防水盒)" "SMART KEY(附防水盒)" "04017SMART KEY(附防水盒)" "FL+120CM" "單聯 直式 BOX")
    ("SMART KEY天線地板BOX" "SMART KEY天線地板BOX" "04018SMART KEY天線地板BOX" "配合現場施作" " ")
    ("SMART KEY觸發開關" "SMART KEY觸發開關" "04019SMART KEY觸發開關" "配合現場施作" " ")
    ("SMART KEY主機(住戶用)" "SMART KEY主機(住戶用)" "04020SMART KEY主機(住戶用)" "FL+120CM" " ")
    ("人員通關翼閘機(單側進出)" "人員通關翼閘機(單側進出)" "04021人員通關翼閘機(單側進出)" "配合現場施作" " ")
    ("人員通關翼閘機(雙側進出)" "人員通關翼閘機(雙側進出)" "04022人員通關翼閘機(雙側進出)" "配合現場施作" " ")
    ("開門按鈕預留接線盒" "開門按鈕預留接線盒" "04023開門按鈕預留接線盒" "配合現場施作" " ")
    ("電鎖預留接線盒" "電鎖預留接線盒" "04024電鎖預留接線盒" "配合現場施作" " ")
    ("感應式讀卡機預留接線盒" "感應式讀卡機預留接線盒" "04025感應式讀卡機預留接線盒" "FL+120CM" " ")
    ("SMART KEY主機預留接線盒" "SMART KEY主機預留接線盒" "04026SMART KEY主機預留接線盒" "FL+120CM" " ")

    ("免持聽筒對講機" "免持聽筒對講機" "05001免持聽筒對講機" "FL+140CM" "單聯 直式 BOX")
    ("保全對講主機" "保全對講主機" "05002保全對講主機" "FL+140CM" "單聯 直式 BOX")
    ("室內對講機" "室內對講機" "05003室內對講機" "FL+140CM" "單聯 直式 BOX")
    ("對講設定型門口機" "對講設定型門口機" "05004對講設定型門口機" "FL+120CM" "單聯 直式 BOX")
    ("對講設定型門口機(附防水盒)" "對講設定型門口機(附防水盒)" "05005對講設定型門口機(附防水盒)" "FL+120CM" "單聯 直式 BOX")
    ("對講門口機(含讀卡功能)" "對講門口機(含讀卡功能)" "05006對講門口機(含讀卡功能)" "FL+120CM" " ")
    ("影視對講門口機(含讀卡功能)" "影視對講門口機(含讀卡功能)" "05007影視對講門口機(含讀卡功能)" "FL+140CM" " ")
    ("對講門口機(含讀卡功能附防水盒)" "對講門口機(含讀卡功能附防水盒)" "05008對講門口機(含讀卡功能附防水盒)" "FL+120CM" " ")
    ("影視對講門口機(含讀卡功能附防水盒)" "影視對講門口機(含讀卡功能附防水盒)" "05009影視對講門口機(含讀卡功能附防水盒)" "FL+140CM" " ")
    ("影視對講門口機" "影視對講門口機" "05010影視對講門口機" "FL+140CM" " ")
    ("影視對講門口機(附防水盒)" "影視對講門口機(附防水盒)" "05011影視對講門口機(附防水盒)" "FL+140CM" " ")
    ("數位對講機" "數位對講機" "05012數位對講機" "FL+140CM" " ")
    ("保全對講機" "保全對講機" "05013保全對講機" "FL+140CM" " ")
    ("彩色影視對講機" "彩色影視對講機" "05014彩色影視對講機" "FL+140CM" "雙聯 直式 BOX")
    ("室內有話筒對講機" "室內有話筒對講機" "05015室內有話筒對講機" "FL+140CM" " ")
    ("免持聽筒對講機(附防水箱)" "免持聽筒對講機(附防水箱)" "05016免持聽筒對講機(附防水箱)" "FL+140CM" " ")
    ("室外對講機" "室外對講機" "05017室外對講機" "FL+140CM" " ")
    ("影視保全對講主機" "影視保全對講主機" "05018影視保全對講主機" "FL+140CM" "雙聯 直式 BOX")
    ("圍牆保全主機" "圍牆保全主機" "05019圍牆保全主機" "管理員室" " ")
    ("保全對講管理總機" "保全對講管理總機" "05020保全對講管理總機" "管理員室" " ")
    ("影視對講設定型門口機" "影視對講設定型門口機" "05021影視對講設定型門口機" "FL+140CM" " ")
    ("影視對講設定型門口機(附防水盒)" "影視對講設定型門口機(附防水盒)" "05022影視對講設定型門口機(附防水盒)" "FL+140CM" " ")
    ("對講機(含求救功能)" "對講機含求救功能" "05023對講機(含求救功能)" "FL+140CM" " ")
    ("對講機(含人臉辨識功能)" "對講機(含人臉辨識功能)" "05024對講機(含人臉辨識功能)" "FL+140CM" " ")
    ("緊急對講機(含求救功能)" "緊急對講機(含求救功能)" "05025緊急對講機(含求救功能)" "FL+140CM" " ")
    ("室外對講機(附防雨罩)" "室外對講機(附防雨罩)" "05026室外對講機(附防雨罩)" "FL+140CM" " ")
    ("數字門口機" "數字門口機" "05027數字門口機" "FL+140CM" " ")
    ("玄關對講門口機" "玄關對講門口機" "05028玄關對講門口機" "FL+140CM" " ")
    ("玄關對講門口機(附防水盒)" "玄關對講門口機(附防水盒)" "05029玄關對講門口機(附防水盒)" "FL+140CM" " ")
    ("玄關影視對講門口機(含讀卡功能)" "玄關對講門口機(含讀卡功能)" "05030玄關影視對講門口機(含讀卡功能)" "FL+140CM" " ")
    ("玄關對講門口機(含讀卡功能)" "對講門口機(含讀卡功能附防水箱)" "05031玄關對講門口機(含讀卡功能)" "FL+140CM" " ")
    ("對講門口機" "對講門口機" "05032對講門口機" "FL+140CM" " ")
    ("浴室對講電話機" "浴室對講電話機" "05033浴室對講電話機" "配合現場施作" " ")
    ("副控鎖含門鈴" "副控鎖含門鈴" "05034副控鎖含門鈴" "FL+120CM" " ")
    ("讀卡機含門鈴" "讀卡機含門鈴" "05035讀卡機含門鈴" "FL+120CM" " ")
    ("瓦斯偵測器" "瓦斯偵測器" "05036瓦斯偵測器" "天花板下" "電源 AC 110V")
    ("廚下型瓦斯偵測器" "廚下型瓦偵" "05037廚下型瓦斯偵測器" "FL+30~60CM" "電源 AC 110V")
    ("瓦斯偵測器(電池式)" "瓦斯偵測器(電池式)" "05038瓦斯偵測器(電池式)" "天花板下" " ")
    ("05039定溫感知器(廚房)" "定溫感知器(廚房)" "05039定溫感知器(廚房)" "天花板下" " ")
    ("偵煙式感知器" "偵煙式感知器" "05040偵煙式感知器" "天花板下" " ")
    ("瓦斯及一氧化碳偵測器" "瓦斯及一氧化碳偵測器" "05041瓦斯及一氧化碳偵測器" "天花板下" "電源 AC 110V")
    ("自動報警機" "自動報警機" "05042自動報警機" "設於弱電箱內" " ")
    ("鐵捲門感知器" "鐵捲門感知器" "05043鐵捲門感知器" "出線口設置於版下-20CM" " ")
    ("玻璃破碎震動偵測器" "玻璃破碎震動偵測器" "05044玻璃破碎震動偵測器" "配合現場施作" " ")
    ("無線接收主機" "無線防盜設定" "05045無線接收主機" "配合現場施作" " ")
    ("副控鎖" "副控鎖" "05046副控鎖" "FL+120CM" " ")
    ("門鈴按鈕" "電鈴" "05047門鈴按鈕" "配合現場施作" " ")
    ("密碼盤" "密碼盤" "05048密碼盤" "配合現場施作" " ")
    ("玻璃破碎音頻感應器" "玻璃破碎音頻感應器" "05049玻璃破碎音頻感應器" "配合現場施作" " ")
    ("瓦斯遮斷閥" "瓦斯遮斷閥" "05050瓦斯遮斷閥" "配合現場施作" " ")
    ("溫度感應器" "溫度感應器" "05051溫度感應器" "配合現場施作" " ")
    ("煙霧偵測器" "煙霧偵測器" "05052煙霧偵測器" "配合現場施作" " ")
    ("差動感應器" "差動感應器" "05053差動感應器" "配合現場施作" " ")
    ("磁簧開關(明)" "磁簧開關(明)" "05054磁簧開關(明)" "配合現場施作" " ")
    ("隱藏式磁簧開關" "隱藏式磁簧開關" "05055隱藏式磁簧開關" "配合現場施作" " ")
    ("緊急求救按鈕" "緊急求救按鈕" "05056緊急求救按鈕" "FL+120CM" "單聯 直式 BOX")
    ("緊急求救按鈕(H90)" "緊急求救按鈕(H90)" "05057緊急求救按鈕(H90)" "FL+90CM" "單聯 直式 BOX")
    ("緊急求救按鈕(H15)" "緊急求救按鈕(H15)" "05058緊急求救按鈕(H15)" "FL+15CM" "單聯 直式 BOX")
    ("單聯BOX" "單聯BOX" "05059單聯BOX" "配合現場施作" " ")
    ("捲門感知器預留接線盒" "捲門感知器預留接線盒" "05060捲門感知器預留接線盒" "配合現場施作" " ")
    ("對講機預留接線盒" "對講機預留接線盒" "05061對講機預留接線盒" "配合現場施作" " ")
    ("瓦斯偵測器預留接線盒" "瓦斯偵測器預留接線盒" "05062瓦斯偵測器預留接線盒" "配合現場施作" " ")
    ("磁簧預留接線盒" "磁簧預留接線盒" "05063磁簧預留接線盒" "配合現場施作" " ")

    ("行動電話強波器室內天線" "行動電話強波器室內天線" "06001行動電話強波器室內天線" "天花板下" " ")
    ("行動電話強波器室內指向型天線" "行動電話強波器室內指向型天線" "06002行動電話強波器室內指向型天線" "天花板下" " ")
    ("行動電話強波器指向式天線(電梯用)" "行動電話強波器指向式天線(電梯用)" "06003行動電話強波器指向式天線(電梯用)" "配合現場施作" " ")
    ("行動電話強波器高增益平板天線(電梯用)" "行動電話強波器高增益平板天線(電梯用)" "06004行動電話強波器高增益平板天線(電梯用)" "配合現場施作" " ")
    ("行動電話強波器設備箱" "行動電話強波器設備箱" "06005行動電話強波器設備箱" "配合現場施作" "AC 110V電源及接地線")
    ("行動電話強波器設備箱1" "行動電話強波器設備箱1" "06006行動電話強波器設備箱1" "配合現場施作" "AC 110V電源及接地線")
    ("行動電話強波器設備箱2" "行動電話強波器設備箱2" "06007行動電話強波器設備箱2" "配合現場施作" "AC 110V電源及接地線")
    ("行動通訊改善設備箱體" "行動通訊改善設備箱體" "06008行動通訊改善設備箱體" "配合現場施作" "AC 110V電源及接地線")
    ("行動電話強波器室外天線" "行動電話強波器室外天線" "06009行動電話強波器室外天線" "壹樓頂版高度" " ")
    ("RAU內建全向天線" "RAU內建全向天線" "06010RAU內建全向天線" "配合現場施作" "電源 AC 110V")
    ("RAU外接天線" "RAU外接天線" "06011RAU外接天線" "配合現場施作" "電源 AC 110V")
    ("全向天線" "全向天線" "06012全向天線" "配合現場施作" " ")
    ("指向性天線" "指向性天線" "06013指向性天線" "配合現場施作" " ")
    ("串接型數位全頻導線器" "串接型數位全頻導線器" "06014串接型數位全頻導線器" "配合現場施作" " ")
    ("雙頻超高增益長距離數位導波器組(DU)" "雙頻超高增益長距離數位導波器組(DU)" "06015雙頻超高增益長距離數位導波器組(DU)" "配合現場施作" " ")
    ("雙頻超高增益長距離數位導波器組(SU)" "雙頻超高增益長距離數位導波器組(SU)" "06016雙頻超高增益長距離數位導波器組(SU)" "配合現場施作" " ")
    ("雙頻超高增益長距離數位導波器組" "雙頻超高增益長距離數位導波器組" "06017雙頻超高增益長距離數位導波器組" "配合現場施作" " ")
    ("中繼放大器(內建2路分配)" "中繼放大器(內建2路分配)" "06018中繼放大器(內建2路分配)" "配合現場施作" " ")
    ("二路分配器" "二路分配器" "06019二路分配器" "配合現場施作" " ")
    ("三路分配器" "三路分配器" "06020三路分配器" "配合現場施作" " ")
    ("四路分配器" "四路分配器" "06021四路分配器" "配合現場施作" " ")
    ("不平衡分配器" "不平衡分配器" "06022不平衡分配器" "配合現場施作" " ")
    ("行動電話強波器室內天線預留接線盒" "行動電話強波器室內天線預留接線盒" "06023行動電話強波器室內天線預留接線盒" "天花板下" " ")
    ("行動電話強波器預留接線箱" "行動電話強波器預留接線箱" "06024行動電話強波器預留接線箱" "天花板下" " ")
    ("行動電話強波器室外天線預留接線盒" "行動電話強波器室外天線預留接線盒" "06025行動電話強波器室外天線預留接線盒" "壹樓頂版高度" " ")

    ("多媒體播放主機" "多媒體播放系統" "07001多媒體播放主機" "配合現場施作" "電源 AC 110V")
    ("液晶螢幕" "螢幕" "07002液晶螢幕" "配合現場施作" "電源 AC 110V")
    ("壁掛喇叭" "壁掛喇叭" "07003壁掛喇叭" "配合現場施作" "單聯 直式 BOX")
    ("吸頂喇叭" "吸頂喇叭" "07004吸頂喇叭" "天花板下" " ")
    ("音量開關" "音量開關" "07005音量開關" "配合現場施作" "單聯 直式 BOX")
    ("廣播主機" "廣播主機" "07006廣播主機" "配合現場施作" "電源 AC 110V")
    ("活動式數位看板" "活動式數位看板" "07007活動式數位看板" "配合現場施作" " ")
    ("喇叭預留接線盒" "喇叭預留接線盒" "07008喇叭預留接線盒" "配合現場施作" " ")
    ("多媒體播放主機預留接線盒" "多媒體播放主機預留接線盒" "07009多媒體播放主機預留接線盒" "配合現場施作" " ")
    ("液晶螢幕預留接線盒" "液晶螢幕預留接線盒" "07010液晶螢幕預留接線盒" "配合現場施作" " ")

    ("無線網路(壁掛)" "無線網路" "08001無線網路(壁掛)" "FL+240CM" " ")
    ("無線網路(吸頂)" "無線網路(吸頂)" "08002無線網路(吸頂)" "天花板下" " ")
    ("網路交換器" "網路交換器" "08003網路交換器" "配合現場施作" " ")
    ("數位電話機" "數位電話機" "08004數位電話機" "配合現場施作" " ")
    ("數位電話門口機(附防水盒)" "數位電話門口機(附防水盒)" "08005數位電話門口機(附防水盒)" "配合現場施作" " ")
    ("電話交換主機" "電話交換主機" "08006電話交換主機" "配合現場施作" " ")
    ("網路出線口" "網路出線口" "08007網路出線口" "FL+30CM" "單聯 橫式 BOX")
    ("電視出線口" "電視出線口" "08008電視出線口" "FL+30CM" "單聯 橫式 BOX")
    ("埋入式電話出線口" "埋入式電話出線口" "08009埋入式電話出線口" "FL+30CM" "單聯 橫式 BOX")
    ("壁掛式電話出線口" "壁掛式電話出線口" "08010壁掛式電話出線口" "FL+120CM" "單聯 直式 BOX")
    ("電視及網路出線口" "電視及網路出線口" "08011電視及網路出線口" "FL+30CM" "單聯 橫式 BOX")
    ("電話及網路出線口" "電話及網路出線口" "08012電話及網路出線口" "FL+30CM" "單聯 橫式 BOX")
    ("VGA及HDMI出線口" "VGA及HDMI出線口" "08013VGA及HDMI出線口" "FL+30CM" "單聯 橫式 BOX")
    ("HDMI出線口" "HDMI出線口" "08014HDMI出線口" "FL+30CM" "單聯 橫式 BOX")
    ("訪客頻道影像出線口" "訪客頻道影像出線口" "08015訪客頻道影像出線口" "FL+30CM" "單聯 橫式 BOX")
    ("衛星電視出線口" "衛星電視出線口" "08016衛星電視出線口" "配合現場施作" " ")
    ("數位電視系統" "數位電視系統" "08017數位電視系統" "配合現場施作" " ")
    ("無線網路預留接線盒" "無線網路預留接線盒" "08018無線網路預留接線盒" "配合現場施作" " ")
    ("網路出線口預留接線盒" "網路出線口預留接線盒" "08019網路出線口預留接線盒" "配合現場施作" " ")

    ("多功能電子鐘" "多功能電子鐘" "09001多功能電子鐘" "取代原電燈開關" "直立式")
    ("弱電箱" "弱電箱" "09002弱電箱" "配合現場施作" " ")
    ("電信箱" "電信箱" "09003電信箱" "配合現場施作" " ")
    ("室內預埋箱(含面板)" "集線箱(BOX)" "09004室內預埋箱(含面板)" "配合現場施作" "(屬水電工程)")
    ("室外預埋箱(含面板)" "室外預埋箱" "09005室外預埋箱(含面板)" "配合現場施作" "(屬水電工程)")
    ("弱電收集箱" "弱電收集箱" "09006弱電收集箱" "管理員室" "電源 AC 110V")
    ("攝影機拉線箱" "攝影機拉線箱" "09007攝影機拉線箱" "管理員室" "電源 AC 110V")
    ("監控設備集線箱" "監控設備集線箱" "09008監控設備集線箱" "配合現場施作" "電源 AC 110V")
    ("集線箱(不銹鋼)" "集線箱(不銹鋼)" "09009集線箱(不銹鋼)" "配合圍牆" "電源 AC 110V")
    ("41U設備機櫃" "設備機櫃" "0901041U設備機櫃" "配合現場施作" "電源 AC 110V")
    ("15U設備機櫃" "15U設備機櫃" "0901115U設備機櫃" "配合現場施作" "電源 AC 110V")
    ("10U設備機櫃" "10U設備機櫃" "0901210U設備機櫃" "配合現場施作" "電源 AC 110V")
    ("POS主機" "POS主機" "09013POS主機" "配合現場施作" "電源 AC 110V")
    ("人員安全警示燈" "人員安全警示燈" "09014人員安全警示燈" "配合現場施作" " ")
    ("電源插座出線口" "電源插座出線口" "09015電源插座出線口" "配合現場施作" " ")
    ("電源供應器" "電源供應器" "09016電源供應器" "配合現場施作" " ")
    ("投影機" "投影機" "09017投影機" "配合現場施作" "電源 AC 110V")
    ("投影機布幕" "投影機布幕" "09018投影機布幕" "配合現場施作" "電源 AC 110V")
    ("麥克風座" "麥克風座" "09019麥克風座" "配合現場施作" " ")
    ("感應式燈控" "感應式燈控" "09020感應式燈控" "天花板下" "最大負載300W")
    ("神燈面板" "神燈" "09021神燈面板" "雙聯 BOX 螺絲孔需在上下" "雙聯 BOX 深度7公分以上")
    ("自動訪客系統門口機" "自動訪客系統門口機" "09022自動訪客系統門口機" "配合現場施作" " ")
    ("自動訪客系統主機" "自動訪客系統主機" "09023自動訪客系統主機" "配合現場施作" " ")
    ("機車充電主機" "機車充電主機" "09024機車充電主機" "配合現場施作" "電源 AC 110V")
    ("初過濾系統" "初過濾系統" "09025初過濾系統" "配合現場施作" " ")
    ("運動手環" "運動手環" "09026運動手環" "配合現場施作" " ")
    ("社區健康量測照護站" "社區健康量測照護站" "09027社區健康量測照護站" "配合現場施作" "電源 AC 110V")
    ("冷氣室內機" "冷氣室內機" "09028冷氣室內機" "配合現場施作" " ")
    ("冷氣室外機" "冷氣室外機" "09029冷氣室外機" "配合現場施作" " ")
    ("預留接線盒" "預留接線盒" "09030預留接線盒" "配合現場施作" " ")
    ("電腦主機" "電腦主機" "09031電腦主機" "配合現場施作" "電源 AC 110V")
    ("平板電腦" "平板電腦" "09032平板電腦" "配合現場施作" " ")
    ("平板電腦1" "平板電腦1" "09033平板電腦1" "配合現場施作" " ")
    ("廚房對講電視" "廚房對講電視" "09034廚房對講電視" "配合現場施作" "單聯橫式 1P BOX")
    ("電視螢幕" "電視螢幕" "09035電視螢幕" "配合現場施作" "電源 AC 110V")
    ("Switch遊戲主機" "Switch遊戲主機" "09036Switch遊戲主機" "配合現場施作" " ")
    ("紫外線抑菌燈" "紫外線抑菌燈" "09037紫外線抑菌燈" "配合現場施作" " ")
    ("電子信箱鎖" "電子信箱鎖" "09038電子信箱鎖" "配合現場施作" " ")
    ("電子信箱鎖預留接線盒" "電子信箱鎖預留接線盒" "09039電子信箱鎖預留接線盒" "配合現場施作" " ")
    ("EMS汽車充電監控箱" "EMS汽車充電監控箱" "09040EMS汽車充電監控箱" "配合現場施作" "電源 AC 110V")
    ("充電樁EMS通訊插座" "充電樁EMS通訊插座" "09041充電樁EMS通訊插座" "配合現場施作" " ")
    ("電磁門扣" "電子晶片鎖" "09042電磁門扣" "配合現場門位" " ")
    ("電磁門扣釋放鈕" "電磁門扣釋放鈕" "09043電磁門扣釋放鈕" "配合現場施作" " ")

    ("門口房況顯示器" "門口房況顯示器" "10001門口房況顯示器" "配合現場施作" " ")
    ("門鈴勿打擾請打掃開關面板" "門鈴勿打擾請打掃開關面板" "10002門鈴勿打擾請打掃開關面板" "配合現場施作" " ")
    ("電子響鈴" "電子響鈴" "10003電子響鈴" "配合現場施作" " ")
    ("房控主機控制箱" "房控主機" "10004房控主機控制箱" "門框上方或衣櫥內" "電源 AC 110V")
    ("節電開關" "節電開關" "10005節電開關" "配合現場施作" " ")
    ("電子門鎖" "電子鎖" "10006電子門鎖" "配合現場施作" " ")
    ("電動窗簾控制面板" "電動窗簾控制面板" "10007電動窗簾控制面板" "配合現場施作" " ")
    ("紅外線基地台" "紅外線基地台" "10008紅外線基地台" "配合現場施作" " ")
    ("紅外線發射器" "紅外線發射器" "10009紅外線發射器" "配合現場施作" " ")
    ("EHOME主機" "EHOME主機" "10010EHOME主機" "配合現場施作" "電源 AC 110V")
    ("智能家居無線基地台" "智能家居無線基地台" "10011智能家居無線基地台" "FL+200CM" " ")
    ("燈光控制器" "燈光控制器" "10012燈光控制器" "配合現場施作" " ")
    ("影像伺服器" "影像伺服器" "10013影像伺服器" "配合現場施作" " ")

    ("燈控行徑面板" "燈控行徑面板" "11001燈控行徑面板" "配合現場施作" " ")
    ("QR code" "QR code" "11002QR code" "配合現場施作" " ")

    ("廚下型雙合一過濾器" "廚下型雙合一過濾器" "12001廚下型雙合一過濾器" "配合現場施作" " ")
    ("除氯系統" "除氯系統" "12002除氯系統" "配合現場施作" " ")
  )
)

; -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

; 用於計算管路長度的指令函數
(defun c:管線()
  (c:監視)
  (c:車道)
  (c:中央)
  (c:門禁)
  (c:對講)
  (c:行動)
  (c:多媒體)
  (c:網路)
  (c:其它)
  (princ)
)

(defun c:監視 ()
  (setq ss (ssget "_X" '((0 . "LWPOLYLINE") (8 . "1監視系統"))))
  (setq totalLength 0.0)
  (if ss
    (progn
      (setq i 0)
      (repeat (sslength ss)
        (setq ent (ssname ss i))
        (setq length (vlax-curve-getdistatparam (vlax-ename->vla-object ent) (vlax-curve-getendparam (vlax-ename->vla-object ent))))
        (setq totalLength (+ totalLength length))
        (setq i (1+ i))
      )
      (setq totalLength (/ totalLength 100))
      (princ (strcat "\n監視系統總長度: " (rtos totalLength 2 1) "公尺"))
    )
    (princ "\n未找到監視系統的聚合線。")
  )
  (princ)
)

(defun c:車道 ()
  (setq ss (ssget "_X" '((0 . "LWPOLYLINE") (8 . "2車輛管理系統"))))
  (setq totalLength 0.0)
  (if ss
    (progn
      (setq i 0)
      (repeat (sslength ss)
        (setq ent (ssname ss i))
        (setq length (vlax-curve-getdistatparam (vlax-ename->vla-object ent) (vlax-curve-getendparam (vlax-ename->vla-object ent))))
        (setq totalLength (+ totalLength length))
        (setq i (1+ i))
      )
      (setq totalLength (/ totalLength 100))
      (princ (strcat "\n車輛管理系統總長度: " (rtos totalLength 2 1) "公尺"))
    )
    (princ "\n未找到車輛管理系統的聚合線。")
  )
  (princ)
)

(defun c:中央 ()
  (setq ss (ssget "_X" '((0 . "LWPOLYLINE") (8 . "3中央監控系統"))))
  (setq totalLength 0.0)
  (if ss
    (progn
      (setq i 0)
      (repeat (sslength ss)
        (setq ent (ssname ss i))
        (setq length (vlax-curve-getdistatparam (vlax-ename->vla-object ent) (vlax-curve-getendparam (vlax-ename->vla-object ent))))
        (setq totalLength (+ totalLength length))
        (setq i (1+ i))
      )
      (setq totalLength (/ totalLength 100))
      (princ (strcat "\n中央監控系統總長度: " (rtos totalLength 2 1) "公尺"))
    )
    (princ "\n未找到中央監控系統的聚合線。")
  )
  (princ)
)

(defun c:門禁 ()
  (setq ss (ssget "_X" '((0 . "LWPOLYLINE") (8 . "4門禁管制系統"))))
  (setq totalLength 0.0)
  (if ss
    (progn
      (setq i 0)
      (repeat (sslength ss)
        (setq ent (ssname ss i))
        (setq length (vlax-curve-getdistatparam (vlax-ename->vla-object ent) (vlax-curve-getendparam (vlax-ename->vla-object ent))))
        (setq totalLength (+ totalLength length))
        (setq i (1+ i))
      )
      (setq totalLength (/ totalLength 100))
      (princ (strcat "\n門禁管制系統總長度: " (rtos totalLength 2 1) "公尺"))
    )
    (princ "\n未找到門禁管制系統的聚合線。")
  )
  (princ)
)

(defun c:對講 ()
  (setq ss (ssget "_X" '((0 . "LWPOLYLINE") (8 . "5對講保全系統"))))
  (setq totalLength 0.0)
  (if ss
    (progn
      (setq i 0)
      (repeat (sslength ss)
        (setq ent (ssname ss i))
        (setq length (vlax-curve-getdistatparam (vlax-ename->vla-object ent) (vlax-curve-getendparam (vlax-ename->vla-object ent))))
        (setq totalLength (+ totalLength length))
        (setq i (1+ i))
      )
      (setq totalLength (/ totalLength 100))
      (princ (strcat "\n對講保全系統總長度: " (rtos totalLength 2 1) "公尺"))
    )
    (princ "\n未找到對講保全系統的聚合線。")
  )
  (princ)
)

(defun c:行動 ()
  (setq ss (ssget "_X" '((0 . "LWPOLYLINE") (8 . "6行動強波系統"))))
  (setq totalLength 0.0)
  (if ss
    (progn
      (setq i 0)
      (repeat (sslength ss)
        (setq ent (ssname ss i))
        (setq length (vlax-curve-getdistatparam (vlax-ename->vla-object ent) (vlax-curve-getendparam (vlax-ename->vla-object ent))))
        (setq totalLength (+ totalLength length))
        (setq i (1+ i))
      )
      (setq totalLength (/ totalLength 100))
      (princ (strcat "\n行動強波系統總長度: " (rtos totalLength 2 1) "公尺"))
    )
    (princ "\n未找到行動強波系統的聚合線。")
  )
  (princ)
)

(defun c:多媒體 ()
  (setq ss (ssget "_X" '((0 . "LWPOLYLINE") (8 . "7多媒體廣播系統"))))
  (setq totalLength 0.0)
  (if ss
    (progn
      (setq i 0)
      (repeat (sslength ss)
        (setq ent (ssname ss i))
        (setq length (vlax-curve-getdistatparam (vlax-ename->vla-object ent) (vlax-curve-getendparam (vlax-ename->vla-object ent))))
        (setq totalLength (+ totalLength length))
        (setq i (1+ i))
      )
      (setq totalLength (/ totalLength 100))
      (princ (strcat "\n多媒體廣播系統總長度: " (rtos totalLength 2 1) "公尺"))
    )
    (princ "\n未找到多媒體廣播系統的聚合線。")
  )
  (princ)
)

(defun c:網路 ()
  (setq ss (ssget "_X" '((0 . "LWPOLYLINE") (8 . "8網路弱電系統"))))
  (setq totalLength 0.0)
  (if ss
    (progn
      (setq i 0)
      (repeat (sslength ss)
        (setq ent (ssname ss i))
        (setq length (vlax-curve-getdistatparam (vlax-ename->vla-object ent) (vlax-curve-getendparam (vlax-ename->vla-object ent))))
        (setq totalLength (+ totalLength length))
        (setq i (1+ i))
      )
      (setq totalLength (/ totalLength 100))
      (princ (strcat "\n網路弱電系統總長度: " (rtos totalLength 2 1) "公尺"))
    )
    (princ "\n未找到網路弱電系統的聚合線。")
  )
  (princ)
)

(defun c:其它 ()
  (setq ss (ssget "_X" '((0 . "LWPOLYLINE") (8 . "9其它系統"))))
  (setq totalLength 0.0)
  (if ss
    (progn
      (setq i 0)
      (repeat (sslength ss)
        (setq ent (ssname ss i))
        (setq length (vlax-curve-getdistatparam (vlax-ename->vla-object ent) (vlax-curve-getendparam (vlax-ename->vla-object ent))))
        (setq totalLength (+ totalLength length))
        (setq i (1+ i))
      )
      (setq totalLength (/ totalLength 100))
      (princ (strcat "\n其它系統總長度: " (rtos totalLength 2 1) "公尺"))
    )
    (princ "\n未找到其它系統的聚合線。")
  )
  (princ)
)

; ===================================================================


; <計數類>


; ===================================================================

; 函數:基礎參數
(setq
    count:version "1.0"
    count:defaults
   '(
        (out "tab")
        (tg1 "1")
        (tg2 "1")
        (tg3 "1")
        (ed1 "表格標題")
        (ed2 "圖例")
        (ed3 "說明")
        (ed4 "數量")
        (srt "blk")
        (ord "asc")
    )
)

;----------------------------------------------------------------------;

; 函數:符號修正
(defun count:fixdir ( dir )
    (vl-string-right-trim "\\" (vl-string-translate "/" "\\" dir))
)

;----------------------------------------------------------------------;

; 函數:儲存路徑
(defun count:getsavepath ( / tmp )
    (cond      
        (   (setq tmp (getvar 'roamablerootprefix))
            (strcat (count:fixdir tmp) "\\Support")
        )
        (   (setq tmp (findfile "acad.pat"))
            (count:fixdir (vl-filename-directory tmp))
        )
        (   (count:fixdir (vl-filename-directory (vl-filename-mktemp))))
    )
)

;----------------------------------------------------------------------;

; 函數:DCL檔與配置檔的儲存路徑
(setq count:savepath (count:getsavepath)
      count:dclfname (strcat count:savepath "\\Lisp製圖程式" count:version ".dcl")
      count:cfgfname (strcat count:savepath "\\Lisp製圖程式" count:version ".cfg")
)

;----------------------------------------------------------------------;

(defun c:lict

    (
        /
        *error*
        all
        col
        des dir
        ed1 ed2 ed3 ed4
        fil fnm fun
        idx ins
        lst
        ord out
        row
        sel srt
        tab tg1 tg2 tg3 tmp
        xrf
    )

    (defun *error* ( msg )
        (if (= 'file (type des))
            (close des)
        )
        (if (and (= 'vla-object (type tab))
                 (null (vlax-erased-p tab))
                 (= "AcDbTable" (vla-get-objectname tab))
                 (vlax-write-enabled-p tab)
                 (vlax-property-available-p tab 'regeneratetablesuppressed t)
            )
            (vla-put-regeneratetablesuppressed tab :vlax-false)
        )
        (if (and (= 'vla-object (type count:wshobject))
                 (not (vlax-object-released-p count:wshobject))
            )
            (progn
                (vlax-release-object count:wshobject)
                (setq count:wshobject nil)
            )
        )
        (count:endundo (count:acdoc))
        (if (and msg (not (wcmatch (strcase msg t) "*break,*cancel*,*exit*")))
            (princ (strcat "\n錯誤: " msg))
        )
        (princ)
    )

    (if (not (findfile count:cfgfname))
        (count:writecfg count:cfgfname (mapcar 'cadr count:defaults))
    )
    (count:readcfg count:cfgfname (mapcar 'car count:defaults))
    (foreach sym count:defaults
        (if (not (boundp (car sym))) (apply 'set sym))
    )
    (if (and (= "tab" out) (not (vlax-method-applicable-p (vla-get-modelspace (count:acdoc)) 'addtable)))
        (setq out "txt")
    )
    
    (count:startundo (count:acdoc))

    (while (setq tmp (tblnext "block" (null tmp)))
        (if (= 4 (logand 4 (cdr (assoc 70 tmp))))
            (setq xrf (vl-list* "," (cdr (assoc 2 tmp)) xrf))
        )
    )
    (if xrf
        (setq fil  (list '(0 . "INSERT") '(-4 . "<NOT") (cons 2 (apply 'strcat (cdr xrf))) '(-4 . "NOT>") 
                         '(8 . "1監視系統,2車輛管理系統,3中央監控系統,4門禁管制系統,5對講保全系統,6行動強波系統,7多媒體廣播系統,8網路弱電系統,9其它系統,10房控EHOME系統,11燈控控設備,12過濾器系統"))
        )
        (setq fil '((0 . "INSERT") 
                    (8 . "1監視系統,2車輛管理系統,3中央監控系統,4門禁管制系統,5對講保全系統,6行動強波系統,7多媒體廣播系統,8網路弱電系統,9其它系統,10房控EHOME系統,11燈控控設備,12過濾器系統"))
        )
    )
    
    (cond
        (   (null (setq all (ssget "_X" fil)))
            (count:popup
                "發現問題" 64
                (princ "找不到任何指定圖層的圖塊。")
            )
        )
        (   (and (= "tab" out) (= 4 (logand 4 (cdr (assoc 70 (tblsearch "layer" (getvar 'clayer)))))))
            (count:popup
                "發現問題" 64
                (princ "請先將當前的圖層解鎖。")
            )
        )
        (   (progn
                (setvar 'nomutt 1)
                (princ "\n請利用鼠標窗選欲計算的圖塊... 窗選完成後按下Enter或Space ")
                (setq sel
                    (cond
                        (   (null (setq sel (vl-catch-all-apply 'ssget (list fil))))
                            all
                        )
                        (   (null (vl-catch-all-error-p sel))
                            sel
                        )
                    )
                )
                (setvar 'nomutt 0)
                (null sel)
            )
        )
        (   (or (= "com" out)
                (and (=  "tab" out) (setq ins (getpoint "\n請先指定一個點以建立表格。")))
                (and (/= "tab" out)
                    (setq fnm
                        (getfiled "建立輸出文件"
                            (cond
                                (   (and (setq dir (getenv "LMac\\countdir"))
                                         (vl-file-directory-p (setq dir (count:fixdir dir)))
                                    )
                                    (strcat dir "\\")
                                )
                                (   (getvar 'dwgprefix))
                            )
                            out 1
                        )
                    )
                )
            )
            (repeat (setq idx (sslength sel))
                (setq lst (count:assoc++ (count:effectivename (ssname sel (setq idx (1- idx)))) lst))
            )
            (if (= "blk" srt)
                (setq fun (eval (list 'lambda '( a b ) (list (if (= "asc" ord) '< '>) '(strcase (car a)) '(strcase (car b))))))
                (setq fun (eval (list 'lambda '( a b ) (list (if (= "asc" ord) '< '>) '(cdr a) '(cdr b)))))
            )
            (setq lst (vl-sort lst 'fun))
            (cond
                (   (= "com" out)
                    (defun prinn ( x ) (princ "\n") (princ x))
                    (prinn (count:padbetween "" "" "=" 60))
                    (if (= "1" tg1)
                        (progn
                            (prinn ed1)
                            (prinn (count:padbetween "" "" "-" 60))
                        )
                    )
                    (prinn (count:padbetween ed3 ed4 " " 55))
                    (prinn (count:padbetween "" "" "-"   60))
                    (if (= "1" tg3)
                        (foreach itm lst
                            (prinn (count:padbetween (car itm) (itoa (cdr itm)) "." 55))
                        )
                        (foreach itm lst (prinn (car itm)))
                    )
                    (prinn (count:padbetween "" "" "=" 60))
                    (textpage)
                )
                (   (= "tab" out)
                    (if (= "1" tg3)
                        (setq lst (mapcar '(lambda ( x ) (list (car x) (itoa (cdr x)))) lst))
                        (setq lst (mapcar '(lambda ( x ) (list (car x))) lst))
                    )
                    (setvar 'CLAYER "0")
                    (setq tab
                        (vla-addtable
                            (vlax-get-property (count:acdoc) (if (= 1 (getvar 'cvport)) 'paperspace 'modelspace))
                            (vlax-3D-point (trans ins 1 0))
                            (+ (length lst) 2)
                            (+ 1 (atoi tg2) (atoi tg3))
                            100
                            400
                        )
                    )
                    (if (vlax-property-available-p tab 'regeneratetablesuppressed t)
                        (vla-put-regeneratetablesuppressed tab :vlax-true)
                    )
                    (setvar "ctablestyle" "Standard")
                    (vla-put-stylename tab (getvar 'ctablestyle))
                    (setq col 0)
                    (mapcar
                       '(lambda 
                            ( a b ) 
                            (if (= "1" a) 
                                (progn 
                                  (vla-settext tab 1 col b)
                                  (setq col (1+ col))
                                )
                            )
                        )
                        (list tg2 "1" tg3) ; 匿名函數之參數a
                        (list ed2 ed3 ed4) ; 匿名函數之參數b
                    )
                    (setq row 2)
                    (foreach itm lst
                        (if (= "1" tg2)
                            (count:setblocktablerecord tab row (setq col 0) (car itm))
                            (setq col -1)
                        )
                        (foreach txt itm
                          (setq col (1+ col))
                          (if (and (= col 1) (> row 1))
                              (setq txt (substr txt 6)))
                          (vla-settext tab row col txt)
                        )
                        (setq row (1+ row))
                    )
                    (if (= "1" tg1)
                        (vla-settext tab 0 0 ed1)
                        (vla-deleterows tab 0 1)
                    )
                 
                    ; 函數:表格文字高度
                    (vla-settextheight tab acDataRow 57.6)
                    (vla-settextheight tab acHeaderRow 100)
                    (vla-settextheight tab acTitleRow 100)
                    (vla-settextheight tab acUnknownRow 43.2)
                 
                    ; 函數:置中
                    (vla-setalignment tab acDataRow acMiddleCenter)
                    (vla-setalignment tab acHeaderRow acMiddleCenter)
                    (vla-setalignment tab acTitleRow acMiddleCenter)
                 
                    ; 函數:比例
                    (setq row 1)
                    (while (< row (vla-get-rows tab))
                      (vla-setautoscale tab row 0 :vlax-false)
                      (vla-setcellalignment tab row 1 acMiddleLeft)
                      (vla-setmargin tab row 1 acCellMarginLeft 50)
                      (setq row (1+ row))
                    )
                    (vla-setrowheight tab 0 187)
                    (vla-setcolumnwidth tab 1 1000)
                    (vla-setcolumnwidth tab 2 175)
                    (vla-setcelltextheight tab 0 2 70)
                 
                    ; 函數:文字型式
                    (vla-settextstyle tab acDataRow "Standard")
                    (vla-settextstyle tab acHeaderRow "Standard")
                    (vla-settextstyle tab acTitleRow "Standard")
                    (vla-settextstyle tab acUnknownRow "Standard")
  
                    ; 函數:表格型式
                    (vla-setbackgroundcolornone tab acDataRow :vlax-true)
                    (vla-setbackgroundcolornone tab acHeaderRow :vlax-true)
                    (vla-setbackgroundcolornone tab acTitleRow :vlax-true)
                    (vla-setbackgroundcolornone tab acUnknownRow :vlax-true)
                  
                    (setq doc (vla-get-ActiveDocument (vlax-get-acad-object)))
                    (setq dict (vla-get-dictionaries doc))
                    (setq tblStyleDict (vla-item dict "acad_tablestyle"))
                    (setq tblStyle (vla-item tblStyleDict "Standard"))
                    (vla-put-HorzCellMargin tblStyle 0.05)
                    (vla-put-VertCellMargin tblStyle 0.05)
                 
                    ; 函數:特例處理
                    (setq row 1)
                    (while (< row (vla-get-rows tab))
                      (progn
                        (if (= (vl-princ-to-string (vla-gettext tab row 1)) "車道設備控制器")
                            (progn
                              (setq point:start (list (+ (car ins) 170.36) (- (- (cadr ins) 237) (* (- row 1) 100)) (caddr ins)))
                              (setq point:end (list (- (car point:start) 200) (cadr point:start) (caddr point:start)))
                              (setq point:text (list (+ (car point:end) 10) (+ (cadr point:end) 10) (caddr point:end)))
                              (setq line:obj (entmakex (list '(0 . "LINE") (cons 10 point:start) (cons 11 point:end) (cons 8 "2車輛管理系統"))))
                              (setq text:obj (entmakex (list (cons 0 "TEXT") (cons 10 point:text) (cons 40 30) (cons 1 "AC 110V") (cons 7 "Standard") (cons 8 "2車輛管理系統"))))
                            )
                        )
                        (if (= (vl-princ-to-string (vla-gettext tab row 1)) "柵欄機")
                            (progn
                              (setq point:start (list (+ (car ins) 213) (- (- (cadr ins) 237) (* (- row 1) 100)) (caddr ins)))
                              (setq point:end (list (- (car point:start) 200) (cadr point:start) (caddr point:start)))
                              (setq point:text (list (+ (car point:end) 10) (+ (cadr point:end) 10) (caddr point:end)))
                              (setq line:obj (entmakex (list '(0 . "LINE") (cons 10 point:start) (cons 11 point:end) (cons 8 "2車輛管理系統"))))
                              (setq text:obj (entmakex (list (cons 0 "TEXT") (cons 10 point:text) (cons 40 30) (cons 1 "AC 110V") (cons 7 "Standard") (cons 8 "2車輛管理系統"))))
                            )
                        )
                        (if (= (vl-princ-to-string (vla-gettext tab row 1)) "瓦斯偵測器")
                            (progn
                             (vla-deletecellcontent tab row 0)
                             (vla-setrowheight tab row 100)
                             (vla-setcolumnwidth tab 0 400)
                             (setq doc (vla-get-activedocument (vlax-get-acad-object))) 
                             (setq space (if (= (getvar "cvport") 1) (vla-get-paperspace doc) (vla-get-modelspace doc))) 
                             (setq point:insert (list (+ (car ins) 200) (- (- (cadr ins) 237) (* (- row 1) 100)) (caddr ins)))
                             (vla-insertblock space (vlax-3D-point point:insert) "05036瓦斯偵測器" 1.0 1.0 1.0 0.0))
                        )
                        (if (= (vl-princ-to-string (vla-gettext tab row 1)) "室內預埋箱(含面板)")
                            (progn
                              (setq point:nametext (list (+ (car ins) 1000) (- (- (cadr ins) 260) (* (- row 1) 100)) (caddr ins)))
                              (setq point:nametexttype (list (+ (car ins) 1060) (- (- (cadr ins) 235) (* (- row 1) 100)) (caddr ins)))
                              (setq text:nameobj (entmakex (list (cons 0 "TEXT") (cons 10 point:nametext) (cons 40 20) (cons 1 "30cmx35cmx10cmx2.0mm") (cons 7 "Standard") (cons 8 "9其它系統"))))
                              (setq text:nameobjtype (entmakex (list (cons 0 "TEXT") (cons 10 point:nametexttype) (cons 40 14.7) (cons 1 "W      H      D      t") (cons 7 "Standard") (cons 8 "9其它系統"))))
                            )
                        )
                        (if (= (vl-princ-to-string (vla-gettext tab row 1)) "室外預埋箱(含面板)")
                            (progn
                              (setq point:nametext (list (+ (car ins) 1000) (- (- (cadr ins) 260) (* (- row 1) 100)) (caddr ins)))
                              (setq point:nametexttype (list (+ (car ins) 1060) (- (- (cadr ins) 235) (* (- row 1) 100)) (caddr ins)))
                              (setq text:nameobj (entmakex (list (cons 0 "TEXT") (cons 10 point:nametext) (cons 40 20) (cons 1 "40cmx45cmx10cmx2.0mm") (cons 7 "Standard") (cons 8 "9其它系統"))))
                              (setq text:nameobjtype (entmakex (list (cons 0 "TEXT") (cons 10 point:nametexttype) (cons 40 14.7) (cons 1 "W      H      D      t") (cons 7 "Standard") (cons 8 "9其它系統"))))
                            )
                        )
                        (if (= (vl-princ-to-string (vla-gettext tab row 1)) "弱電收集箱")
                            (progn
                              (setq point:start (list (+ (car ins) 148.83) (- (- (cadr ins) 237) (* (- row 1) 100)) (caddr ins)))
                              (setq point:end (list (- (car point:start) 200) (cadr point:start) (caddr point:start)))
                              (setq point:text (list (+ (car point:end) 10) (+ (cadr point:end) 10) (caddr point:end)))
                              (setq line:obj (entmakex (list '(0 . "LINE") (cons 10 point:start) (cons 11 point:end) (cons 8 "9其它系統"))))
                              (setq text:obj (entmakex (list (cons 0 "TEXT") (cons 10 point:text) (cons 40 30) (cons 1 "AC 110V") (cons 7 "Standard") (cons 8 "9其它系統"))))
                              
                              (setq point:nametext (list (+ (car ins) 840) (- (- (cadr ins) 260) (* (- row 1) 100)) (caddr ins)))
                              (setq point:nametexttype (list (+ (car ins) 900) (- (- (cadr ins) 235) (* (- row 1) 100)) (caddr ins)))
                              (setq text:nameobj (entmakex (list (cons 0 "TEXT") (cons 10 point:nametext) (cons 40 20) (cons 1 "45cmx45cmx10cmx2.0mm") (cons 7 "Standard") (cons 8 "9其它系統"))))
                              (setq text:nameobjtype (entmakex (list (cons 0 "TEXT") (cons 10 point:nametexttype) (cons 40 14.7) (cons 1 "W      H      D      t") (cons 7 "Standard") (cons 8 "9其它系統"))))
                            )
                        )
                        (if (= (vl-princ-to-string (vla-gettext tab row 1)) "攝影機拉線箱")
                            (progn
                              (setq point:start (list (+ (car ins) 148.83) (- (- (cadr ins) 237) (* (- row 1) 100)) (caddr ins)))
                              (setq point:end (list (- (car point:start) 200) (cadr point:start) (caddr point:start)))
                              (setq point:text (list (+ (car point:end) 10) (+ (cadr point:end) 10) (caddr point:end)))
                              (setq line:obj (entmakex (list '(0 . "LINE") (cons 10 point:start) (cons 11 point:end) (cons 8 "9其它系統"))))
                              (setq text:obj (entmakex (list (cons 0 "TEXT") (cons 10 point:text) (cons 40 30) (cons 1 "AC 110V") (cons 7 "Standard") (cons 8 "9其它系統"))))
                            
                              (setq point:nametext (list (+ (car ins) 840) (- (- (cadr ins) 260) (* (- row 1) 100)) (caddr ins)))
                              (setq point:nametexttype (list (+ (car ins) 900) (- (- (cadr ins) 235) (* (- row 1) 100)) (caddr ins)))
                              (setq text:nameobj (entmakex (list (cons 0 "TEXT") (cons 10 point:nametext) (cons 40 20) (cons 1 "45cmx45cmx10cmx2.0mm") (cons 7 "Standard") (cons 8 "9其它系統"))))
                              (setq text:nameobjtype (entmakex (list (cons 0 "TEXT") (cons 10 point:nametexttype) (cons 40 14.7) (cons 1 "W      H      D      t") (cons 7 "Standard") (cons 8 "9其它系統"))))
                            )
                        )
                        (if (= (vl-princ-to-string (vla-gettext tab row 1)) "廚下型雙合一過濾器")
                            (progn
                              (setq point:start (list (+ (car ins) 157.47) (- (- (cadr ins) 237) (* (- row 1) 100)) (caddr ins)))
                              (setq point:end (list (- (car point:start) 200) (cadr point:start) (caddr point:start)))
                              (setq point:text (list (+ (car point:end) 10) (+ (cadr point:end) 10) (caddr point:end)))
                              (setq line:obj (entmakex (list '(0 . "LINE") (cons 10 point:start) (cons 11 point:end) (cons 8 "12過濾器系統"))))
                              (setq text:obj (entmakex (list (cons 0 "TEXT") (cons 10 point:text) (cons 40 30) (cons 1 "AC 110V") (cons 7 "Standard") (cons 8 "12過濾器系統"))))
                            )
                        )
                      )
                      (setq row (1+ row))
                    )
                 
                    ; 函數:樓層
                    (setq floor (getstring "\n請輸入樓層： (例如:B1F、3F、R1F、RF或4F~12F等。)"))
                    (vla-settext tab 0 2 floor)
                    (if (> (strlen floor) 2) (vla-setcelltextheight tab 0 2 55))
                    (if (> (strlen floor) 3) (vla-setcelltextheight tab 0 2 45))
                    (if (> (strlen floor) 4) (vla-setcelltextheight tab 0 2 40))
                    (vla-setrowheight tab 0 187)
                )
                (   (setenv "LMac\\countdir" (count:fixdir (vl-filename-directory fnm)))
                    (if
                        (
                            (if (= "txt" out)
                                count:writetxtd
                                count:writecsv
                            )
                            (append
                                (if (= "1" tg1)
                                    (list (list ed1))
                                )
                                (if (= "1" tg3)
                                    (cons (list ed3 ed4) (mapcar '(lambda ( x ) (list (car x) (itoa (cdr x)))) lst))
                                    (cons (list ed3)     (mapcar '(lambda ( x ) (list (car x))) lst))
                                )
                            )
                            fnm
                        )
                        (princ (strcat "\n圖塊資料寫入 " fnm))
                        (count:popup "無法建立輸出文件" 48
                            (princ
                                (strcat
                                    "該程式無法建立以下文件:\n\n"
                                    fnm
                                    "\n\n請確保您對上述目錄有寫入權限。"
                                )
                            )
                        )
                    )
                 
                )
            )
        )
    )
    (*error* nil)
    (princ)
)

;----------------------------------------------------------------------;

(defun c:licts

    (
        /
        *error*
        dch des
        ord out out-fun
        srt
        tg1 tg1-fun tg2 tg2-fun tg3 tg3-fun
    )
  
    ; 函數:刪除指定的舊檔案
    (if (findfile count:cfgfname)
        (vl-file-delete (strcat count:savepath "\\LMAC_count_V1-5.dcl"))
    )
    (if (findfile count:cfgfname)
        (vl-file-delete count:cfgfname)
    )

    ; 函數:刪除指定的舊檔案
    (if (findfile count:dclfname)
        (vl-file-delete (strcat count:savepath "\\LMAC_count_V1-5.cfg"))
    )
    (if (findfile count:dclfname)
        (vl-file-delete count:dclfname)
    )

    (defun *error* ( msg )
        (if (= 'file (type des))
            (close des)
        )
        (if (and (= 'int (type dch))
                 (< 0 dch)
            )
            (unload_dialog dch)
        )
        (if (and (= 'vla-object (type count:wshobject))
                 (not (vlax-object-released-p count:wshobject))
            )
            (progn
                (vlax-release-object count:wshobject)
                (setq count:wshobject nil)
            )
        )
        (if (and msg (not (wcmatch (strcase msg t) "*break,*cancel*,*exit*")))
            (princ (strcat "\n錯誤: " msg))
        )
        (princ)
    )

    (if (not (findfile count:cfgfname))
        (count:writecfg count:cfgfname (mapcar 'cadr count:defaults))
    )
    (count:readcfg count:cfgfname (mapcar 'car count:defaults))
    (foreach sym count:defaults
        (if (not (boundp (car sym))) (apply 'set sym))
    )
    (cond
        (   (not (count:writedcl count:dclfname))
            (count:popup "DCL 檔案無法寫入" 48
                (princ
                    (strcat
                        "該程式所需的 DCL 檔案無法寫入以下位置:\n\n"
                        count:dclfname
                        "\n\n請確保您對上述目錄有寫入權限。"
                    )
                )
            )
        )
        (   (<= (setq dch (load_dialog count:dclfname)) 0)
            (count:popup "DCL 檔案無法載入" 48
                (princ
                    (strcat
                        "無法載入該程式所需的以下 DCL 文件:\n\n"
                        count:dclfname
                        "\n\n請驗證該文件的完整性。"
                    )
                )
            )
        )
        (   (not (new_dialog "dia" dch))
            (count:popup "DCL 檔案包含錯誤" 48
                (princ
                    (strcat
                        "無法顯示程式對話框，因為以下 DCL 檔案包含錯誤:\n\n"
                        count:dclfname
                        "\n\n請驗證該文件的完整性。"
                    )
                )
            )
        )
        (   t
            (set_tile "dcl"
                (strcat
                    "控制面板"
                )
            )
            (if (and (= "tab" out) (not (vlax-method-applicable-p (vla-get-modelspace (count:acdoc)) 'addtable)))
                (progn
                    (mode_tile "tab" 1)
                    (setq out "txt")
                )
            )
            (   (setq tg1-fun (lambda ( val ) (mode_tile "ed1" (- 1 (atoi (setq tg1 val)))))) (set_tile "tg1" tg1))
            (action_tile "tg1" "(tg1-fun $value)")

            (   (setq tg2-fun (lambda ( val ) (mode_tile "ed2" (- 1 (atoi (setq tg2 val)))))) (set_tile "tg2" tg2))
            (action_tile "tg2" "(tg2-fun $value)")

            (   (setq tg3-fun (lambda ( val ) (mode_tile "ed4" (- 1 (atoi (setq tg3 val)))))) (set_tile "tg3" tg3))
            (action_tile "tg3" "(tg3-fun $value)")

            (foreach key '("ed1" "ed2" "ed3" "ed4")
                (set_tile key (eval (read key)))
                (action_tile key (strcat "(setq " key " $value)"))
            )
            (set_tile out "1")
            (   (setq out-fun
                    (lambda ( val )
                        (if (= "tab" (setq out val))
                            (progn
                                (mode_tile "tg2" 0)
                                (mode_tile "ed2" (- 1 (atoi tg2)))
                            )
                            (progn
                                (mode_tile "tg2" 1)
                                (mode_tile "ed2" 1)
                            )
                        )
                    )
                )
                out
            )
            (foreach key '("tab" "txt" "csv" "com")
                (action_tile key "(out-fun $key)")
            )
            (set_tile srt "1")
            (foreach key '("blk" "qty")
                (action_tile key "(setq srt $key)")
            )
            (set_tile ord "1")
            (foreach key '("asc" "des")
                (action_tile key "(setq ord $key)")
            )
            (if (= 1 (start_dialog))
                (count:writecfg count:cfgfname (mapcar 'eval (mapcar 'car count:defaults)))
            )
        )
    )
    (*error* nil)
    (princ)
)

;----------------------------------------------------------------------;
                
(defun count:popup ( ttl flg msg / err )
    (setq err (vl-catch-all-apply 'vlax-invoke-method (list (count:wsh) 'popup msg 0 ttl flg)))
    (if (null (vl-catch-all-error-p err))
        err
    )
)
 
;----------------------------------------------------------------------;
 
(defun count:wsh nil
    (cond (count:wshobject) ((setq count:wshobject (vlax-create-object "wscript.shell"))))
)

;----------------------------------------------------------------------;

(defun count:tostring ( arg / dim )
    (cond
        (   (= 'int (type arg))
            (itoa arg)
        )
        (   (= 'real (type arg))
            (setq dim (getvar 'dimzin))
            (setvar 'dimzin 8)
            (setq arg (rtos arg 2 15))
            (setvar 'dimzin dim)
            arg
        )
        (   (vl-prin1-to-string arg))
    )
)
 
;----------------------------------------------------------------------;
 
(defun count:writecfg ( cfg lst / des )
    (if (setq des (open cfg "w"))
        (progn
            (foreach itm lst (write-line (count:tostring itm) des))
            (setq des (close des))
            t
        )
    )
)

;----------------------------------------------------------------------;

(defun count:readcfg ( cfg lst / des itm )
    (if
        (and
            (setq cfg (findfile cfg))
            (setq des (open cfg "r"))
        )
        (progn
            (foreach sym lst
                (if (setq itm (read-line des))
                    (set  sym (read itm))
                )
            )
            (setq des (close des))
            t
        )
    )
)

;----------------------------------------------------------------------;

(defun count:writedcl ( dcl / des )
    (cond
        (   (findfile dcl))
        (   (setq des (open dcl "w"))
            (foreach itm
               '(
                    "b15 : edit_box"
                    "{"
                    "    edit_width = 16;"
                    "    edit_limit = 1024;"
                    "    fixed_width = true;"
                    "    alignment = centered;"
                    "    horizontal_margin = none;"
                    "    vertical_margin = none;"
                    "}"
                    "b30 : edit_box"
                    "{"
                    "    edit_width = 52;"
                    "    edit_limit = 1024;"
                    "    fixed_width = true;"
                    "    alignment = centered;"
                    "    horizontal_margin = none;"
                    "    vertical_margin = none;"
                    "}"
                    "tog : toggle"
                    "{"
                    "    vertical_margin = none;"
                    "    horizontal_margin = 0.2;"
                    "}"
                    "rwo : row"
                    "{"
                    "    fixed_width = true;"
                    "    alignment = centered;"
                    "}"
                    "rrw : radio_row"
                    "{"
                    "    fixed_width = true;"
                    "    alignment = centered;"
                    "}"
                    "dia : dialog"
                    "{"
                    "    key = \"dcl\";"
                    "    spacer_1;"
                    "    : boxed_column"
                    "    {"
                    "        label = \"輸出方式\";"
                    "        : rrw"
                    "        {"
                    "            : radio_button { key = \"tab\"; label = \"表格(主要)\"; }"
                    "            : radio_button { key = \"txt\"; label = \"文字檔案\"; }"
                    "            : radio_button { key = \"csv\"; label = \"CSV檔案\"; }"
                    "            : radio_button { key = \"com\"; label = \"指令行\"; }"
                    "        }"
                    "        spacer;"
                    "    }"
                    "    : boxed_column"
                    "    {"
                    "        label = \"表格設定\";"
                    "        spacer_1;"
                    "        : rwo"
                    "        {"
                    "            : tog { key = \"tg1\"; }"
                    "            : b30 { key = \"ed1\"; }"
                    "            : spacer"
                    "            {"
                    "                fixed_width = true;"
                    "                vertical_margin = none;"
                    "                width = 2.5;"
                    "            }"
                    "        }"
                    "        : rwo"
                    "        {"
                    "            spacer;"
                    "            : tog { key = \"tg2\"; }"
                    "            : b15 { key = \"ed2\"; }"
                    "            : b15 { key = \"ed3\"; }"
                    "            : b15 { key = \"ed4\"; }"
                    "            : tog { key = \"tg3\"; }"
                    "            spacer;"
                    "        }"
                    "        spacer_1;"
                    "    }"
                    "    : row"
                    "    {"
                    "        : boxed_column"
                    "        {"
                    "            label = \"排列依據\";"
                    "            : rrw"
                    "            {"
                    "                : radio_button { key = \"blk\"; label = \"圖塊名稱\"; }"
                    "                : radio_button { key = \"qty\"; label = \"數量\"; }"
                    "            }"
                    "            spacer;"
                    "        }"
                    "        : boxed_column"
                    "        {"
                    "            label = \"排序方式\";"
                    "            : rrw"
                    "            {"
                    "                : radio_button { key = \"asc\"; label = \"升冪排序\"; }"
                    "                : radio_button { key = \"des\"; label = \"降冪排序\"; }"
                    "            }"
                    "            spacer;"
                    "        }"
                    "    }"
                    "    spacer_1; ok_cancel;"
                    "}"
                    ""
                )
                (write-line itm des)
            )
            (setq des (close des))
            (while (not (findfile dcl)))
            dcl
        )
    )
)

;----------------------------------------------------------------------;
 
(defun count:writecsv ( lst csv / des sep )
    (if (setq des (open csv "w"))
        (progn
            (setq sep (cond ((vl-registry-read "HKEY_CURRENT_USER\\Control Panel\\International" "sList")) (",")))
            (foreach row lst (write-line (count:lst->csv row sep) des))
            (close des)
            t
        )
    )
)
 
;----------------------------------------------------------------------;
 
(defun count:lst->csv ( lst sep )
    (if (cdr lst)
        (strcat (count:csv-addquotes (car lst) sep) sep (count:lst->csv (cdr lst) sep))
        (count:csv-addquotes (car lst) sep)
    )
)

;----------------------------------------------------------------------;
 
(defun count:csv-addquotes ( str sep / pos )
    (cond
        (   (wcmatch str (strcat "*[`" sep "\"]*"))
            (setq pos 0)    
            (while (setq pos (vl-string-position 34 str pos))
                (setq str (vl-string-subst "\"\"" "\"" str pos)
                      pos (+ pos 2)
                )
            )
            (strcat "\"" str "\"")
        )
        (   str   )
    )
)
 
;----------------------------------------------------------------------;
 
(defun count:writetxt ( lst txt / des )
    (if (setq des (open txt "w"))
        (progn
            (foreach itm lst (write-line (count:lst->str itm "\t") des))
            (close des)
            t
        )
    )
)
 
;----------------------------------------------------------------------;
 
(defun count:lst->str ( lst del )
    (if (cdr lst)
        (strcat (car lst) del (count:lst->str (cdr lst) del))
        (car lst)
    )
)

;----------------------------------------------------------------------;

(defun count:padbetween ( s1 s2 ch ln )
    (
        (lambda ( a b c )
            (repeat (- ln (length b) (length c)) (setq c (cons a c)))
            (vl-list->string (append b c))
        )
        (ascii ch)
        (vl-string->list s1)
        (vl-string->list s2)
    )
)

;----------------------------------------------------------------------;

(defun count:setblocktablerecord ( obj row col blk )
    (eval
        (list 'defun 'count:setblocktablerecord '( obj row col blk )
            (cons
                (if (vlax-method-applicable-p obj 'setblocktablerecordid32)
                    'vla-setblocktablerecordid32
                    'vla-setblocktablerecordid
                )
                (list
                    'obj 'row 'col
                    (list 'count:objectid (list 'vla-item (vla-get-blocks (count:acdoc)) 'blk))
                    ':vlax-true
                )
            )
        )
    )
    (count:setblocktablerecord obj row col blk)
)

;----------------------------------------------------------------------;

(defun count:objectid ( obj )
    (eval
        (list 'defun 'count:objectid '( obj )
            (cond
                (   (not (wcmatch (getenv "PROCESSOR_ARCHITECTURE") "*64*"))
                   '(vla-get-objectid obj)
                )
                (   (= 'subr (type vla-get-objectid32))
                   '(vla-get-objectid32 obj)
                )
                (   (list 'vla-getobjectidstring (vla-get-utility (count:acdoc)) 'obj ':vlax-false))
            )
        )
    )
    (count:objectid obj)
)

;----------------------------------------------------------------------;

(defun count:assoc++ ( key lst / itm )
    (if (setq itm (assoc key lst))
        (subst (cons key (1+ (cdr itm))) itm lst)
        (cons  (cons key 1) lst)
    )
)

;----------------------------------------------------------------------;

(defun count:effectivename ( ent / blk rep )
    (if (wcmatch (setq blk (cdr (assoc 2 (entget ent)))) "`**")
        (if
            (and
                (setq rep
                    (cdadr
                        (assoc -3
                            (entget
                                (cdr
                                    (assoc 330
                                        (entget
                                            (tblobjname "block" blk)
                                        )
                                    )
                                )
                               '("AcDbBlockRepBTag")
                            )
                        )
                    )
                )
                (setq rep (handent (cdr (assoc 1005 rep))))
            )
            (setq blk (cdr (assoc 2 (entget rep))))
        )
    )
    blk
)

;----------------------------------------------------------------------;

(defun count:startundo ( doc )
    (count:endundo doc)
    (vla-startundomark doc)
)

;----------------------------------------------------------------------;

(defun count:endundo ( doc )
    (while (= 8 (logand 8 (getvar 'undoctl)))
        (vla-endundomark doc)
    )
)

;----------------------------------------------------------------------;

(defun count:acdoc nil
    (eval (list 'defun 'count:acdoc 'nil (vla-get-activedocument (vlax-get-acad-object))))
    (count:acdoc)
)

;----------------------------------------------------------------------;

(defun c:lito
    (
        /
        *error*
        all
        col
        des
        fil fun
        idx ins
        lst
        row
        sel srh
        tab tim tmp
        xrf
    )

    (defun *error* ( msg )
        (if (= 'file (type des))
            (close des)
        )
        (if (and (= 'vla-object (type tab))
                 (null (vlax-erased-p tab))
                 (= "AcDbTable" (vla-get-objectname tab))
                 (vlax-write-enabled-p tab)
                 (vlax-property-available-p tab 'regeneratetablesuppressed t)
            )
            (vla-put-regeneratetablesuppressed tab :vlax-false)
        )
        (if (and (= 'vla-object (type count:wshobject))
                 (not (vlax-object-released-p count:wshobject))
            )
            (progn
                (vlax-release-object count:wshobject)
                (setq count:wshobject nil)
            )
        )
        (count:endundo (count:acdoc))
        (if (and msg (not (wcmatch (strcase msg t) "*break,*cancel*,*exit*")))
            (princ (strcat "\n錯誤: " msg))
        )
        (princ)
    )

    ; 函數:圖塊篩選
    (setq fil '((0 . "INSERT")
                (8 . "1監視系統,2車輛管理系統,3中央監控系統,4門禁管制系統,5對講保全系統,6行動強波系統,7多媒體廣播系統,8網路弱電系統,9其它系統,10房控EHOME系統,11燈控控設備,12過濾器系統")
               )
    )
    (while (setq tmp (tblnext "block" (null tmp)))
        (if (= 4 (logand 4 (cdr (assoc 70 tmp))))
            (setq xrf (vl-list* "," (cdr (assoc 2 tmp)) xrf))
        )
    )
    (if xrf
        (setq fil  (list '(0 . "INSERT") 
                         '(-4 . "<NOT") 
                          (cons 2 (apply 'strcat (cdr xrf))) 
                         '(-4 . "NOT>")
                         '(8 . "1監視系統,2車輛管理系統,3中央監控系統,4門禁管制系統,5對講保全系統,6行動強波系統,7多媒體廣播系統,8網路弱電系統,9其它系統,10房控EHOME系統,11燈控控設備,12過濾器系統")
                   )
        )
        (setq fil '((0 . "INSERT")
                    (8 . "1監視系統,2車輛管理系統,3中央監控系統,4門禁管制系統,5對講保全系統,6行動強波系統,7多媒體廣播系統,8網路弱電系統,9其它系統,10房控EHOME系統,11燈控控設備,12過濾器系統")
                   )
        )
    )

    ; 函數:檢查圖塊
    (cond
        (   (null (setq all (ssget "_X" fil)))
            (count:popup
                "發現問題" 64
                (princ "找不到任何圖塊。")
            )
        )
        (   (and (= 4 (logand 4 (cdr (assoc 70 (tblsearch "layer" (getvar 'clayer)))))))
            (count:popup
                "發現問題" 64
                (princ "請先將當前的圖層解鎖。")
            )
        )
        (   (progn
                (setvar 'nomutt 1)
                (princ "\n請利用鼠標窗選欲計入的圖塊... 窗選完成後按下Enter或Space ")
                (setq sel
                    (cond
                        (   (null (setq sel (vl-catch-all-apply 'ssget (list fil))))
                            all
                        )
                        (   (null (vl-catch-all-error-p sel))
                            sel
                        )
                    )
                )
                (setvar 'nomutt 0)
                (null sel)
            )
        )
    )
  
    (repeat (setq idx (sslength sel))
      (setq lst (count:assoc++ (count:effectivename (ssname sel (setq idx (1- idx)))) lst))
    )
    (setq fun (eval (list 'lambda '(a b) (list '< '(strcase (car a)) '(strcase (car b))))))
    (setq lst (vl-sort lst 'fun))
    (setq lst (mapcar '(lambda ( x ) (list (car x))) lst))
  
    ; 函數:獲取插入點
    (setq ins (getpoint "\n請指定一個點以建立表格... "))

    ; 函數:創建表格
    (setvar 'CLAYER "0")
    (setq tab 
             (vla-addtable
                (vlax-get-property (count:acdoc) (if (= 1 (getvar 'cvport)) 'paperspace 'modelspace))
                (vlax-3D-point (trans ins 1 0))
                (+ (length lst) 2)
                6
                100
                400
             )
    )
    (setvar "ctablestyle" "Standard")
    (vla-put-stylename tab (getvar 'ctablestyle))
  
    ; 函數:設置表格標題
    (vla-mergecells tab 0 0 0 5)
    (vla-mergecells tab 2 (+ (length lst) 1) 0 0)
    (vla-settext tab 0 0 "宗順資訊工程標準圖例")
  
    ; 函數:設置表頭
    (vla-settext tab 1 0 "系 統")
    (vla-settext tab 1 1 "NO")
    (vla-setcelltextheight tab 1 1 90)
    (vla-settext tab 1 2 "圖 例")
    (vla-settext tab 1 3 "說    明")
    (vla-settext tab 1 4 "安裝高度")
    (vla-settext tab 1 5 "備 註")
  
    ; 函數:插入圖塊數據
    (setq row 2)
    (setq tim 1)
  
    ; 函數:"NO"欄遞增
    (while (<= tim (length lst))
      (vla-settext tab row 1 (itoa tim))
      (setq tim (+ 1 tim))
      (setq row (+ 1 row))
    )
  
    ; 函數:圖例、說明、安裝高度、備註
    (setq row 2)
    (setq col 2)
    (foreach itm lst
        (count:setblocktablerecord tab row 2 (car itm))
        (foreach txt itm
         (setq txt (substr txt 6))
         (vla-settext tab row 3 txt)
         (setq col-five (cadddr (assoc txt block:list)))
         (setq col-six (car(cddddr (assoc txt block:list))))
         (vla-settext tab row 4 (vl-princ-to-string col-five))
         (vla-settext tab row 5 (vl-princ-to-string col-six))
         (if (> (strlen (vl-princ-to-string col-five)) 12)
         (vla-setcelltextheight tab row 4 40)
         )
         (if (> (strlen (vl-princ-to-string col-six)) 8)
         (vla-setcelltextheight tab row 5 40)
         )
        )
        (vla-setautoscale tab row 2 :vlax-false)
        (vla-setblockscale tab row 2 1)
        (setq row (1+ row))
    )
  
    ; 函數:調整表格格式
    (setq row 2)
    (while (< row (vla-get-rows tab))
      (vla-setcellalignment tab row 3 acMiddleLeft)
      (vla-setcellalignment tab row 4 acMiddleLeft)
      (vla-setcellalignment tab row 5 acMiddleLeft)
      (vla-setmargin tab row 3 acCellMarginLeft 50)
      (vla-setmargin tab row 4 acCellMarginLeft 50)
      (vla-setmargin tab row 5 acCellMarginLeft 50)
      (setq row (1+ row))
    )
  
    ; 函數:行高、欄寬
    (vla-setrowheight tab 0 200)
    (vla-setrowheight tab 1 187)
    (vla-setcolumnwidth tab 0 270)
    (vla-setcolumnwidth tab 1 270)
    (vla-setcolumnwidth tab 2 400)
    (vla-setcolumnwidth tab 3 1000)
    (vla-setcolumnwidth tab 4 780)
    (vla-setcolumnwidth tab 5 610)
  
    ; 函數:文字高度
    (vla-settextheight tab acDataRow 57.6)
    (vla-settextheight tab acHeaderRow 77)
    (vla-settextheight tab acTitleRow 77)
    (vla-settextheight tab acUnknownRow 43.2)
  
    ; 函數:內容置中
    (vla-setalignment tab acDataRow acMiddleCenter)
    (vla-setalignment tab acHeaderRow acMiddleCenter)
    (vla-setalignment tab acTitleRow acMiddleCenter)
  
    ; 函數:文字型式
    (vla-settextstyle tab acDataRow "Standard")
    (vla-settextstyle tab acHeaderRow "Standard")
    (vla-settextstyle tab acTitleRow "Standard")
    (vla-settextstyle tab acUnknownRow "Standard")
  
    ; 函數:背景無色彩
    (vla-setbackgroundcolornone tab acDataRow :vlax-true)
    (vla-setbackgroundcolornone tab acHeaderRow :vlax-true)
    (vla-setbackgroundcolornone tab acTitleRow :vlax-true)
    (vla-setbackgroundcolornone tab acUnknownRow :vlax-true)
    
    ; 函數:調整行高
    (setq srh 0)
    (while (< srh (length lst)) 
      (vla-setrowheight tab (+ 2 srh) 100)
      (setq srh (+ 1 srh))
    )
  
    (setq doc (vla-get-ActiveDocument (vlax-get-acad-object)))
    (setq dict (vla-get-dictionaries doc))
    (setq tblStyleDict (vla-item dict "acad_tablestyle"))
    (setq tblStyle (vla-item tblStyleDict "Standard"))
    (vla-put-HorzCellMargin tblStyle 0.05)
    (vla-put-VertCellMargin tblStyle 0.05)
  
    (princ)
)


; 函數:文字型式
(defun style:text (/ doc textStyles tim idx)
 (setq doc (vla-get-ActiveDocument (vlax-get-acad-object)))
 (setq textStyles (vla-get-TextStyles doc))
 (setq tim (vla-get-Count textStyles))
 (setq idx 0)
 (while (< idx tim)
   (setq textStyle (vla-Item textStyles idx))
   (vla-put-Width textStyle 1.0)
   (vla-put-FontFile textStyle "simplex.shx")
   (vla-put-BigFontFile textStyle "@chineset.shx")
   (setq idx (1+ idx))
 )
)
; 執行:函數
(style:text)(princ)


; ===================================================================

; 指令:轉存fas檔
(defun c:lisave (/ save:fas)
 (save:fas)
)

; 函數:{[vlisp-compile] [模式] [當前檔案] [轉存檔案]}
(defun save:fas ()
 (vlisp-compile 'st 
                "C:/Users/admin/Desktop/1.個人檔案/@製圖/研發AutoCAD/AutoLISP應用程式.lsp" 
                "C:/Users/admin/Desktop/1.個人檔案/@製圖/研發AutoCAD/AutoLISP應用程式"
 )
)


; ===================================================================


(princ "\n<< 常用指令 >>")
(princ "\nlia:主要功能")
(princ "\nlicts:輸出設定")
(princ "\nzz:出圖用")
(C:lia)

(princ)