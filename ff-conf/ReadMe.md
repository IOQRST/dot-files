# Firefox расширения

1. Canvas Defender
2. ClearURLs
3. Cookie-Editor
4. Decentraleyes
5. Disconnect
6. Firefox Multi-Account Containers
7. HeaderTools
8. ImTranslator: Переводчик, Словарь, Голос
9. Privacy Badger
10. Privacy Possum
11. Return YouTube Dislike
12. SponsorBlock для YouTube
13. Tampermonkey + [Translator](https://github.com/ilyhalight/voice-over-translation)
14. uBlock Origin
15. Unhook - Remove YouTube Recommended & Shorts
16. Youtube Tabs
17. Proxy - [CopyLink](https://p.thenewone.lol:8443/proxy.pac)
18. DNS Over HTTPS - [CopyLink](https://1.1.1.1/dns-query)

# Базовые настройки приватности для firefox

#### Сначала установи все, а потом уже применяй конфиг!

1. В раздел `<Install_dir>\defaults\pref` поместить файл [autoconfig.js](js/autoconfig.js)

1. В раздел `<Install_dir>` поместить файл [firefox.cfg.js](js/firefox.cfg.js)

1. В папке профиля создать папку `chrome` и поместить в него [userChrome.css](chrome/userChrome.css) и [userContent.css](chrome/userContent.css)

1. На вкладке `Приватность и защита` в разделе `Включить DNS через HTTPS, используя:` выбрать `Максимальную защиту`. В поставщике указать `Другой URL` и указать [CopyLink](https://freedns.controld.com/p1).
