# Firefox расширения

1. Canvas Defender
2. Clear Browsing Data
3. ClearURLs
4. Cookie-Editor
5. Decentraleyes
6. Disconnect
7. Firefox Multi-Account Containers
8. HeaderTools
9. ImTranslator: Переводчик, Словарь, Голос
10. Privacy Badger
11. Privacy Possum
12. Return YouTube Dislike
13. SponsorBlock для YouTube
14. Tampermonkey + [Translator](https://github.com/ilyhalight/voice-over-translation)
15. uBlock Origin
16. Unhook - Remove YouTube Recommended & Shorts
17. Youtube Tabs
18. Proxy - [CopyLink](https://p.thenewone.lol:8443/proxy.pac)
19. DNS Over HTTPS - Выбрать из вариантов в разделе DOH сервисы.

# DOH сервисы.

Quad9:
 - [Вариант 0](https://dns.quad9.net/dns-query)

AdGuard DNS:
  - [Вариант 0](https://dns.adguard-dns.com/dns-query)
  - [Вариант 1](https://dns-family.adguard-dns.com/dns-query)

NextDNS: 
  - [Вариант 0](https://dns.nextdns.io)

Cloudflare:
  - [Вариант 0](https://1.1.1.1/dns-query)  
  - [Вариант 1](https://cloudflare-dns.com/dns-query)
  - [Вариант 2](https://security.cloudflare-dns.com/dns-query)

# Базовые настройки приватности для firefox

#### Сначала установи все, а потом уже применяй конфиг!

1. В раздел `<Install_dir>\defaults\pref` поместить файл [autoconfig.js](js/autoconfig.js)

1. В раздел `<Install_dir>` поместить файл [firefox.cfg.js](js/firefox.cfg.js)

1. В папке профиля создать папку `chrome` и поместить в него [userChrome.css](chrome/userChrome.css) и [userContent.css](chrome/userContent.css)

1. На вкладке `Приватность и защита` в разделе `Включить DNS через HTTPS, используя:` выбрать `Максимальную защиту`. В поставщике указать `Другой URL` и указать [CopyLink](https://freedns.controld.com/p1).

Если вы, как и я, используете браузер Zen, то UI просто убьет все. Я решил, что UI в Zen меня и так устраивает, но вот анимации для панели закладок хотелось бы вернуть, так что, пошаманя немного с файлом userChrome.css я получил вот это [userChrome_forZen.css](chrome/userChrome_forZen.css). **Для Zen нужен только он.** Устанавливается точно так же как и обычный userChrome.