<div align="center">
   <img width="160" src="https://i.imgur.com/wz2b85J.png" alt="logo">
   <img width="160" src="https://i.imgur.com/jm0M0rG.png" alt="logo">
   <h1>Miui camera function completion-Miui_Camera</h1>
   <p>
       <b><a href="https://github.com/a406010503/Miui_Camera/blob/main/README.md">繁體中文</a>  丨 English</b>
   </p>
   <a href="https://github.com/a406010503/Miui_Camera/releases"><img alt="GitHub all releases" src="https://img.shields.io/github/downloads/a406010503/Miui_Camera/total?label=Downloads"></a>
   <a href="https://github.com/a406010503/Miui_Camera/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/a406010503/Miui_Camera"></a>
   <a href="https://github.com/a406010503/Miui_Camera/"><img alt="Stars" src="https://img.shields.io/github/stars/a406010503/Miui_Camera?label=stars"></a>
   <a href="https://github.com/a406010503/Miui_Camera/releases/latest"><img alt="Release" src="https://img.shields.io/github/v/release/a406010503/Miui_Camera?label=release"></a>
   <a href="https://t.me/HolyBearHome"><img alt="Telegram Group" src="https://img.shields.io/badge/聖小熊の小屋-Telegram-blue.svg?logo=telegram"></a>
   <a href="https://github.com/a406010503/Miui_Camera/blob/main/LICENSE"><img alt="GitHub license" src="https://img.shields.io/github/license/a406010503/Miui_Camera"></a>
   <p>A Magisk camera module based on MIUI13 (Android12) adaptation</p>
</div>

---

### Note
- For details of Xiaomi 12S series Leica cameras , please refer to [[Leica Camera Instructions (must see)](https://github.com/a406010503/Miui_Camera/blob/main/Leica_en.md)]
- Please respect the wisdom of others, when reprinting the camera bag on this project, or when making modifications or secondary creations, please be sure to add the original author and source.

### Sponsorship page has been opened
- Now you can sponsor and support us through PayPal to keep us motivated for updates! **[Click me to go to the sponsorship page](https://paypal.me/holybear0610)**

---

### Module introduction
★ The following camera functions are additionally completed (※)
- Mimoji 3.0
- Super Moon
- movie footage
- Gestures to take pictures
- Magic clone
- long exposure
- Document Mode 2.0
- Professional mode photo style
- Multi-camera continuous recording
- Silent Street Shooting (Continuous Shooting + Video) (※)
- More modes of the Great Demon King Kino camera interface UI (※)
- New version of camera watermark (※)
- Leica custom frame (Leica version only)
- Leica Vivid/Classic mode (Leica version only)
- Leica filter (Leica version only)
- 10/10S/10T/10TP/K30SU 480Fps slow motion
- 11T/K40/K50 rear camera 4K 60Fps
- Proactive 1080p 60Fps
- Proactive fill light interface
- Portrait mode proactive beauty
- Movie mode
- Audio zoom
- 3D Stereo
- Wind noise reduction 
- Headphone radio
- Lens animation
- Video portrait filter
- Tips for photo imperfections
- Lens dirty reminder
- More sliding zoom magnifications
- Removed the international version logo
- Professional mode video and audio infographics
- New VLOG mode
- Sweep in more modes
- Automatic download
- 2X zoom for front camera
- Human eye tracking
- Sound settings

Since version 0700, the following functions are no longer enabled on all models due to ineffectiveness or impracticality:

- Full body mode
- Male makeup adaptation
- Selfie Makeup 1, 2
- Take pictures to speed up
- Portrait flash
- Image quality enhancement
- Focus on everything
- Motion capture
- remove moles
- Master Shots
- Video HDR/AI mode
- close-up mode

---

### Precautions [The following instructions are long, please read them carefully before use]
- Some functions only take effect in versions v4.3.003591.0 (220326-220501) and v4.3004561.0 (220809). The specific functions will be explained in the update log of this version
- Some versions only have basic functions. Usually, "this version does not have full function" will be added to this version (such as the new version of the model watermark/KinoUI)
- Master lenses are only available on Leica cameras, this feature is extremely unstable, so no feedback on this feature is accepted
- Some models with video HDR/Super Anti-Shake function have been deleted from the unsupported models due to the fact that the hardware does not support it. Although the imposed function is switched on, it may cause serious heat and power consumption problems.
- The feature of silent street shooting and street shooting video mode can only be used in the EU modified version (the street shooting function has been removed from the Leica version because it is unavailable)
- Some functions on the setting page may only be switches, please test by yourself, and do not accept feedback on such problems
- Since I haven't tested it on various models, please do not hesitate to report back if there is a problem with the function, thank you~

---

### Model watermark and Kino interface compatible model and description
- The new version of the model watermark is currently only suitable for some models (Xiaomi 10, 10T series)
- Big Demon Kino interface does not work with Leica cameras (supported since version 220818)
- Models for public cameras (v4.3.003591.0 and earlier) that use the new watermark and Kino camera interface UI: **MI 10/Mi 10 Pro/Mi 10 Ultra/Mi 10S/MI 11/Mi 11 Pro/Mi 11 Ultra/Redmi K30 5G/Redmi K30/Redmi K30 Pro/Redmi K40/Redmi K40 Pro**
(umi/cmi/cas/thyme/venus/mars/star/picasso/phoenix/lmi/alioth/haydn)
- Public version camera v4.3.003591.0 (220329/220421) additional models: **Poco X3/Mi 11 Lite 5G/Mi 10 Lite 5G/Mi Mix 4/Mi 11T Pro/Redmi Note 10/Redmi Note 11 /Mi 11 Lite 5G NE**
(karna/renoir/monet/odin/vili/mojito/spes/lisa)
- Public version camera v4.3.003591.0 (220501) additional models: **Mi 10T/Mi 10T Pro/Redmi K30S** (Apollo/Apollo_Pro)
- Unless there is a whim or a major revision, the additional models listed above should not be added in later versions. Currently, only the 3591 version is made. After that, only the Leica camera will be maintained, and the public version of the camera will not be renewed.
- Xiaomi 12 series/Redmi K50 series and other recently launched models have been officially pre-applied with the new version of the watermark. In version 3591 (220501), KinoUI interface (cupid/zeus/psyche/ingres) has been added for Xiaomi 12 series and Redmi K50G. )

---

### Instructions for use
- Magisk can be used directly by swiping (if there is a problem with the camera, please try to clear the cache, it will not be Google)
- Only supports MIUI12.5 development version and above models
- The stable version of MIUI13 after v4.3.003591.0 can be used normally, and the camera before this version will definitely crash
- The Leica Camera Project only supports MIUI13 stable version and development version
- Usually the models listed before July can be used, and more new models will be adapted in the future, so stay tuned
- MIUI ROMs ported by third parties cannot be used (ported to mobile phones or other brands of mobile phones)
- This project has been tested and can be used in Xiaomi.EU ROM, please test the rest of the official changes by yourself

---

### Module screenshot
![Screenshot](https://i.imgur.com/yx2fdcg.png)

---

### Download URL

Miui-Camera Camera Download: [Click here to download the latest release](https://github.com/a406010503/Miui_Camera/releases)

---

### Report BUG

  <a href="https://github.com/a406010503/Miui_Camera/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/a406010503/Miui_Camera"> </a>

---

### Thanks
- Thanks to Cool An [@小陳同學](http://www.coolapk.com/u/1388927), [Vegeca Mobi Team](http://sevtinge.wecrane.club/micamera_44071202.html) Technology provided

---

### Leica Camera License
- The v4.3.004870.0 version of the Leica camera of this project is based on the camera modification of [Vegeca Mobi Team](http://sevtinge.wecrane.club/micamera_44071202.html)
- The original author of this version APK Mod: [@Sevtinge](https://github.com/Sevtinge), has been authorized, and has been approved by [Holy Bear(a406010503)](https://github.com/a406010503) twice Modification, reproduction, modification, secondary creation, etc. are strictly prohibited without permission.
- Certificate number: 2720-1972-8799-1540
- This license is only applicable to v4.3.004870.0 version
