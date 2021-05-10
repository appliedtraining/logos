# Trakstar logos
All The Trakstar application Logos



### Figma link
https://www.figma.com/file/kDC9Im3u6eeqANs9KzNWvs/Traktar-logos?node-id=0%3A1

Source vector file &amp; multiple color &amp; size variants of trakstar application logos.


### Installing package
```bash
npm install @appliedtraining/logos
```

### Publishing
1. Update the version 
2. Create a release in https://github.com/appliedtraining/logos/releases
3. Onces the release is published, github action will be triggered and it will push the changes to `@appliedtraining/logos`


### Setup
1. Clone repo
2. `brew tap homebrew/cask && brew install --cask inkscape && brew install libmagic`

### Usage
run `./generate-png.sh <app-name: console | hire | learn>` 
    > eg `./generate-png.sh console`  



### Faq
- The script just helps us the create multiple png images of different size. 
- Script uses inkscape api https://inkscape.org/sk/doc/inkscape-man.html
