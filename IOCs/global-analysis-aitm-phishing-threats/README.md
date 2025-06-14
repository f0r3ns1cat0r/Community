# Global analysis of Adversary-in-the-Middle phishing threats

This repository contains technical artifacts of the AiTM phishing kits covered in the [*Global analysis of Adversary-in-the-Middle phishing threats*](https://blog.sekoia.io/global-analysis-of-adversary-in-the-middle-phishing-threats) report:

- [Tycoon 2FA](./tycoon-2fa/)
- [Storm-1167](./storm-1167/)
- [NakedPages](./nakedpages/)
- [Sneaky 2FA](./sneaky-2fa/)
- [EvilProxy](./evilproxy/)
- [Evilginx - ywnjb](./evilginx/)
- [Saiga 2FA](./saiga-2fa/)
- [Greatness](./greatness/)
- [Mamba 2FA](./mamba-2fa/)
- [Gabagool](./gabagool/)
- [CEPHAS](./cephas/)

Each kit's directory includes:
- `sheet.pdf`: a one-page reference sheet of the kit's main characteristics
- `*.har`: a full capture of the network activity generated by submitting credentials to a phishing page, in the HTTP Archive format
- `*-stripped.har`: an abridged version of the full HAR, where large-size items have been removed¹ in order to make the file indexable by GitHub Code Search
- `*.html`, `*.js`: source code of key webpages and scripts, extracted from the HAR and reformatted for readability
- `*.png`: screenshots of anti-bot pages
- `urlscan_io.txt`: link to an urlscan.io scan of a phishing page

---
¹ The removed content has been replaced by the following placeholder: `<STRIPPED>`.
