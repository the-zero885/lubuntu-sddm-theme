//
// This file is part of Sugar Dark, a theme for the Simple Display Desktop Manager.
//
// Copyright 2018 Marian Arlt
//
// Sugar Dark is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Sugar Dark is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Sugar Dark. If not, see <https://www.gnu.org/licenses/>.
//

import QtQuick 2.11
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.4
import "Components"

Pane{
    id: root

    padding: config.ScreenPadding || root.padding

    LayoutMirroring.enabled: config.ForceRightToLeft == "true" ? true : Qt.application.layoutDirection === Qt.RightToLeft
    LayoutMirroring.childrenInherit: true

	//Settings of color of text, highlights and buttons:
    palette.button: "transparent"
    palette.highlight: config.ThemeColor
    palette.text: config.ThemeColor
    palette.buttonText: config.ThemeColor

	Rectangle
	{
		//Image background for input forms
		anchors.fill: parent
        Image 
        {
            source: "Assets/Card-Background/background.png"
            fillMode: config.ScaleImageCropped == "true" ? Image.PreserveAspectCrop : Image.PreserveAspectFit
        }
           	
	}
	
	//Settings of general fonts:
    font.family: config.Font
    font.pointSize: config.FontSize !== "" ? config.FontSize : parseInt(height / 80)
    focus: true    

    RowLayout {
        anchors.fill: parent
        spacing: 0

        LoginForm {
            Layout.minimumHeight: parent.height
            Layout.maximumWidth: parent.width / 2.5
        }

		//Wallpaper side:
        Item {
            id: image
            Layout.fillWidth: true
            Layout.fillHeight: true
            Image {
                source: config.background || config.Background
                anchors.fill: parent
                asynchronous: true
                cache: true
                fillMode: config.ScaleImageCropped == "true" ? Image.PreserveAspectCrop : Image.PreserveAspectFit
                clip: true
                mipmap: true
            }
            MouseArea {
                anchors.fill: parent
                onClicked: parent.forceActiveFocus()
            }

        }
    }

}
