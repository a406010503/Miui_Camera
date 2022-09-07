<div align="center">
   <img width="160" src="https://i.imgur.com/wz2b85J.png" alt="logo">
   <img width="160" src="https://i.imgur.com/jm0M0rG.png" alt="logo">
   <h1>Miui相機功能補全-Miui_Camera</h1>
   <p>
       <b><a href="https://github.com/a406010503/Miui_Camera/blob/main/README_en.md">English</a>  丨 繁體中文</b>
   </p>
   <a href="https://github.com/a406010503/Miui_Camera/releases"><img alt="GitHub all releases" src="https://img.shields.io/github/downloads/a406010503/Miui_Camera/total?label=Downloads"></a>
   <a href="https://github.com/a406010503/Miui_Camera/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/a406010503/Miui_Camera"></a>
   <a href="https://github.com/a406010503/Miui_Camera/"><img alt="Stars" src="https://img.shields.io/github/stars/a406010503/Miui_Camera?label=stars"></a>
   <a href="https://github.com/a406010503/Miui_Camera/releases/latest"><img alt="Release" src="https://img.shields.io/github/v/release/a406010503/Miui_Camera?label=release"></a>
   <a href="https://github.com/a406010503/Miui_Camera/blob/main/LICENSE"><img alt="GitHub license" src="https://img.shields.io/github/license/a406010503/Miui_Camera"></a>
   <p>一個基於 MIUI13（Android12）適配的 Magisk 相機模組</p>
</div>

---

<b>注意1：Xiaomi 12S系列的徠卡相機具體請見【[徠卡相機使用說明(必看)](https://github.com/a406010503/Miui_Camera/blob/main/Leica.md)】<p>
注意2：隨著S865機型內測已停更，相機公版今後將不再繼續更新(徠卡版相機仍會繼續更新)。<p>
注意3：請尊重他人智慧結晶，轉載本專案上的相機包，或進行修改、二次創作時，請務必加上原作者及來源。</b></p>

---
### 模組介紹
★ 額外補全以下相機功能(※)
- 萌拍3.0
- 超級月亮
- 電影鏡頭
- 手勢拍照
- 魔法分身
- 長曝光
- 文檔模式2.0
- 專業模式照片風格
- 多機連錄(僅限公版/220905起徠卡版支援)
- 無聲街拍(連拍+錄影)(※)
- 更多模式的大魔王Kino相機介面UI(※)
- 新版相機浮水印(※)
- 徠卡訂製畫框(僅限徠卡版)
- 徠卡生動/經典模式(僅限徠卡版)
- 徠卡濾鏡(僅限徠卡版)
- 10/10S 480Fps慢動作
- 11T/K40/K50 4K 60Fps(僅限徠卡版)
- 前攝補光介面
- 人像模式前攝美顏
- 電影模式
- 音源變焦(僅限徠卡版)
- 3D立體聲(僅限徠卡版)
- 風聲降噪(僅限徠卡版)
- 耳機收音(僅限徠卡版)
- 鏡頭動畫(僅限徠卡版)
- 近距模式
- 錄影人像留色濾鏡(僅限徠卡版)
- 照片瑕疵提示
- 鏡頭髒污提示
- 夜景模式增加5X與10X(僅限徠卡版)
- 高解析度拍攝增加10X(僅限徠卡版)
- 更多的滑動變焦倍率
- 為Xiaomi.EU系統增加Google智慧鏡頭
- 專業模式錄影音訊圖
- 新版VLOG模式

自0700版本起，以下功能因為無作用或不實用不再全機型開啟：

- 全身模式
- 男性妝容適配
- 自拍妝容1、2
- 人眼追焦
- 拍照加速
- 聲音設定
- 人像閃光燈
- 畫質增強
- 萬物追焦
- 運動抓拍
- 去痣
- 大師鏡頭
- 錄影HDR/AI模式
- 前置拍照2X變焦

---

### 注意事項【以下說明較為冗長還請在使用前務必仔細閱讀】
- 部分功能僅在v4.3.003591.0(220326-220501)、v4.3004561.0(220809)的版本生效，具體開啟的功能會在該次版本的更新日誌當中說明
- 部分版本只會有基礎的功能，通常會在該次版本上加註「此版本沒有全開功能」(例如新版機型水印/KinoUI)
- 大師鏡頭僅在徠卡相機上才有，此功能極不穩定，故不接受任何此功能上的反饋
- 錄影HDR/超級防抖功能部分機型由於硬體確實不支援故已在不支援的機型當中刪除，強加功能雖有開關但開啟可能會帶來嚴重發熱與耗電問題
- 無聲街拍的特性及街拍錄影模式僅限EU修改版可以使用(徠卡版由於不可用已移除街拍功能)
- 設定頁面上的部分功能可能只是開關，請自行測試，不接受此類問題反饋
- 由於未在各機型做過測試，若有功能出現問題還請不吝嗇回報，感謝您~

---

### 機型浮水印與Kino介面適配機型與說明
- 新版機型浮水印目前僅適配部分機型（小米10、10T系列）
- 大魔王Kino介面不適用徠卡相機(自220818版本起支援)
- 公版相機(v4.3.003591.0及之前的版本)套用新版浮水印與大魔王Kino相機介面UI的機型:**MI 10/Mi 10 Pro/Mi 10 Ultra/Mi 10S/MI 11/Mi 11 Pro/Mi 11 Ultra/Redmi K30 5G/Redmi K30/Redmi K30 Pro/Redmi K40/Redmi K40 Pro**
(umi/cmi/cas/thyme/venus/mars/star/picasso/phoenix/lmi/alioth/haydn)
- 公版相機v4.3.003591.0(220329/220421)追加套用的機型：**Poco X3/Mi 11 Lite 5G/Mi 10 Lite 5G/Mi Mix 4/Mi 11T Pro/Redmi Note 10/Redmi Note 11/Mi 11 Lite 5G NE**
(karna/renoir/monet/odin/vili/mojito/spes/lisa)
- 公版相機v4.3.003591.0(220501)追加套用的機型：**Mi 10T/Mi 10T Pro/Redmi K30S** (Apollo/Apollo_Pro)
- 以上列出的追加套用機型除非心血來潮或有重大改版不然應該不會在之後的版本追加了，目前只做3591的版本，之後僅會維護徠卡相機，公版相機將不再續更。
- Xiaomi 12系列/Redmi K50系列等近期新推出的機型已經官方預設套用新版浮水印，在3591(220501)版本額外為Xiaomi 12系列及Redmi K50G添加了KinoUI介面 (cupid/zeus/psyche/ingres)

---

### 使用說明
- Magisk直接刷入即可使用(如果相機有問題請您嘗試清除cache，不會就Google)
- 僅支援MIUI12.5開發版以上版本的機型使用
- 自v4.3.003591.0之後的版本MIUI13的穩定版可以正常使用，在該次版本之前的相機必定會閃退
- 徠卡相機項目僅支援MIUI13穩定版及開發版
- 通常7月前上市的機型應該都能使用，後續會適配更多新機型，敬請期待
- 第三方移植的MIUI ROM無法使用(移植到停更或其它品牌的手機)
- 此項目經測試在Xiaomi.EU ROM可以使用，其餘官改請自行測試

---

### 模組截圖
![截圖](https://i.imgur.com/yx2fdcg.png)  

---

### 下載位址

Miui-Camera相機下載：[點擊此處下載最新發行版](https://github.com/a406010503/Miui_Camera/releases)  

---

### 回報BUG

  <a href="https://github.com/a406010503/Miui_Camera/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/a406010503/Miui_Camera"></a>

---

### 致謝
- 感謝酷安[@小陳同學](http://www.coolapk.com/u/1388927)、[菜卡玩機 Vegeca Mobi 團隊](http://sevtinge.weihestudio.club/micamera_44071202.html) 技術提供

---

### 徠卡相機授權許可證書
- 本專案的v4.3.004870.0版本徠卡相機基於[菜卡玩機 Vegeca Mobi 團隊](http://sevtinge.weihestudio.club/micamera_44071202.html)的相機修改
- 該版本 APK Mod 原作者：[@Sevtinge](https://github.com/Sevtinge)，已獲得授權，並經[聖小熊 (a406010503)](https://github.com/a406010503)二次修改，未經許可嚴禁轉載、修改、二次創作等。
- 許可證書號：2720-1972-8799-1540
- 此授權許可證書僅適用於v4.3.004870.0版本
