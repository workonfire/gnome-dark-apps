# Gnome Dark Apps

An **incredibly simple** script for people who use light themes. It allows to set a **dark title bar** for dark-themed applications.

Inspired by [galczo5/gnome-dark-apps](https://github.com/galczo5/gnome-dark-apps), but without JavaScript :P

Also, it has less features, but more are probably coming.

## Example

### Before

![Before](https://i.imgur.com/3SBnV2J.png) 

### After

![After](https://i.imgur.com/Dcar5SH.png)

## Usage

- If you're running **Arch Linux**, you can easily install a package from [AUR](https://aur.archlinux.org/packages/gnome-dark-apps-git)
```sh
yay -S gnome-dark-apps-git
```
The binary is called `dark-theme-toggle`.

- Otherwise:

Clone the repository, run the script by
```sh
chmod +x theme.sh && ./theme.sh
```
and define the app list that will be processed during the theme change. The **configuration file** lies at `~/.dark-theme-app-list`.
If you want to add your own entry, get the `WM_CLASS` property by using `xprop` on the app window.

It's also **recommended** to bind a keyboard shortcut to the script in GNOME settings:
![GNOME Settings](https://i.imgur.com/55PpQLQ.png)
