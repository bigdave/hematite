# Hematite
Hematite is a theme for Zsh. It is based upon the following tenets:
1. *Information should only be displayed if it is useful* - This is at my discretion, but each piece of information is explained as to why it is useful, and only displayed when it is relevant.
1. *It should be easy to visually search the terminal history* - This is accomplished via discrete and intentional styling, explained as part of this document.
1. *The theme should not have a noticeable impact on performance* - The run-time performance of the theme is analyzed as part of this document.

## Elements of the Theme
| Element | Why Show It? | Style | Performance |
|---------|--------------|-------|-------------|
| username | Know which user I am, for when I'm a dude playing a dude pretending to be another dude. So I don't do something crazy. | less prominent | O(1)
| current directory | I need to know where I am, and where I was. | prominent | O(1)
| exit status | I want an obvious indicator if something fails. | Red, the color of errors. | O(1)
| git info | If I'm on a branch I want to know it. | less prominent | O(n)

## Installation
### oh my zsh
`git clone --depth=1 https://github.com/bigdave/hematite.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/hematite`