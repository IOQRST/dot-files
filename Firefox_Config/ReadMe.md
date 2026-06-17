# Firefox расширения

1. Improve Youtube (Open-Source for YouTube)
2. Canvas Defender
3. Clear Browsing Data
4. ClearURLs
5. Cookie-Editor
6. Decentraleyes
7. Disconnect
8. ImTranslator: Переводчик, Словарь, Голос
9. Privacy Badger
10. Privacy Possum
11. Return YouTube Dislike
12. SponsorBlock для YouTube
13. Tampermonkey + [Translator](https://github.com/ilyhalight/voice-over-translation)
14. uBlock Origin
17. YouTube No Translation

## Proxy
[CopyLink](https://p.thenewone.lol:8443/proxy.pac)

## DOH сервисы.

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

## Базовые настройки приватности для firefox

#### Сначала установи все, а потом уже применяй конфиг!

1. В раздел `<Install_dir>\defaults\pref` поместить файл [autoconfig.js](js/autoconfig.js)

1. В раздел `<Install_dir>` поместить файл [firefox.cfg.js](js/firefox.cfg.js)

1. В папке профиля создать папку `chrome` и поместить в него [userChrome.css](chrome/userChrome.css) и [userContent.css](chrome/userContent.css)

1. На вкладке `Приватность и защита` в разделе `Включить DNS через HTTPS, используя:` выбрать `Максимальную защиту`. В поставщике указать `Другой URL` и указать [CopyLink](https://freedns.controld.com/p1).

Если вы, как и я, используете браузер Zen, то UI просто убьет все. Я решил, что UI в Zen меня и так устраивает, но вот анимации для панели закладок хотелось бы вернуть, так что, пошаманя немного с файлом userChrome.css я получил вот это [userChrome_forZen.css](chrome/userChrome_forZen.css). **Для Zen нужен только он.** Устанавливается точно так же как и обычный userChrome.
