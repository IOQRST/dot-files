# Firefox расширения

1. AudioContext Fingerprint Defender
1. Canvas Defender
1. ClearURLs
1. Cookie-Editor
1. Decentraleyes
1. Disconnect
1. Firefox Multi-Account Containers
1. HeaderTools
1. ImTranslator: Переводчик, Словарь, Голос
1. Privacy Badger
1. Privacy Possum
1. Return YouTube Dislike
1. SponsorBlock для YouTube
1. Tampermonkey + [Translator](https://github.com/ilyhalight/voice-over-translation)
1. uBlock Origin
1. Unhook - Remove YouTube Recommended & Shorts
1. Web Archives
1. Youtube Tabs
1. Proxy - [CopyLink](https://p.thenewone.lol:8443/proxy.pac)

# Базовые настройки приватности для firefox

#### Сначала установи все, а потом уже применяй конфиг!

1. В раздел `<Install_dir>\defaults\pref` поместить файл [autoconfig.js](js/autoconfig.js)

1. В раздел `<Install_dir>` поместить файл [firefox.cfg.js](js/firefox.cfg.js)

1. В папке профиля создать папку `chrome` и поместить в него [userChrome.css](chrome/userChrome.css) и [userContent.css](chrome/userContent.css)

1. На вкладке `Приватность и защита` в разделе `Включить DNS через HTTPS, используя:` выбрать `Максимальную защиту`. В поставщике указать `Другой URL` и указать [CopyLink](https://freedns.controld.com/p1).
