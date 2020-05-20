# Lubuntu-Cosmic SDDM Theme

A theme for the SDDM login manager made specifically for the Lubuntu distribution, but can also serve in any other that uses SDDM.

**Preview**
![Theme with Lubuntu Wallpaper](preview.png)

## Install

To install new themes for SDDM you must put the folder with the repository files in the address <code>/usr/share/sddm/themes</code>, after that you can select the theme you want to use by default. To do this, you can use the steps shown in the [Lubuntu official guide for SDDM configuration](https://manual.lubuntu.me/stable/3/3.1/3.1.9/sddm_configuration.html), do it with interface through **Alternatives configurator** included by default in Lubuntu 20.04 LTS or replacing the files in the folder of the default used theme (called "<i>lubuntu</i>") with those of the repository. Of course, you must make the respective backup of the original files in this folder or simply copy it to the sddm themes directory with another name.

In other distributions such as Kubuntu, through KDE's settings for Login Screen you can easily select it.

## Language and time format 

The interface of the theme is mainly in English, so if you want to change the language in Spanish, you must open the directory **Translations** in the repository and replace the file **theme.conf** with the one in the **es_Es** folder. If your native language is another one, open the file **theme.conf** (with any text editor) and add the respective translations to the options shown in the image seen in the preview, you can also change the time format and the wallpaper used by default, to do this put the desired wallpaper in the folder of **Wallpapers** and in the .conf you must add the name of the image followed by its extension (.jpg, .png, etc)

## Credits

Based on the theme "[**Sugar Dark for SDDM**](https://github.com/MarianArlt/sddm-sugar-dark)" by **MarianArlt**.

The icons used were courtesy of the [**Boxicons**](https://boxicons.com/) team.

One of Greg Jeanneau's photos from [**Unplash**](https://unsplash.com/photos/9sxeKzuCVoE) is used, special thanks for sharing it.

Special thanks to the Lubuntu art team that created the wallpapers used by the theme.

## License
[GNU General Public License v3.0](./LICENSE)
