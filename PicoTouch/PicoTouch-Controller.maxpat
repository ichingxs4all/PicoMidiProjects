{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 270.0, 157.0, 1000.0, 522.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1272.0, 337.0, 87.0, 22.0 ],
                    "text": "print formatted"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1272.0, 202.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1224.0, 105.0, 157.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 447.0, 8.0, 157.0, 20.0 ],
                    "text": "< start polling the serial port"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1272.0, 306.0, 46.0, 22.0 ],
                    "style": "newobjBlue",
                    "text": "itoa"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1272.0, 270.0, 81.0, 22.0 ],
                    "text": "zl group 1000"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1196.0, 104.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 419.0, 7.0, 24.0, 24.0 ],
                    "style": "toggleGreen"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1196.0, 132.0, 64.0, 22.0 ],
                    "text": "metro 100"
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 1272.0, 234.0, 58.0, 22.0 ],
                    "text": "sel 13 10"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.0,
                    "id": "obj-25",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1320.0, 132.0, 50.0, 22.0 ],
                    "style": "numberGold",
                    "tricolor": [ 0.764706, 0.592157, 0.101961, 1.0 ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.454902, 0.462745, 0.482353, 1 ],
                    "bgcolor2": [ 0.290196, 0.309804, 0.301961, 1 ],
                    "bgfillcolor_angle": 270,
                    "bgfillcolor_autogradient": 0.0,
                    "bgfillcolor_color": [ 0.290196, 0.309804, 0.301961, 1 ],
                    "bgfillcolor_color1": [ 0.454902, 0.462745, 0.482353, 1 ],
                    "bgfillcolor_color2": [ 0.290196, 0.309804, 0.301961, 1 ],
                    "bgfillcolor_proportion": 0.39,
                    "bgfillcolor_type": "gradient",
                    "gradient": 1,
                    "id": "obj-26",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1272.0, 132.0, 33.0, 22.0 ],
                    "text": "print"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontsize": 12.059008,
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 1272.0, 166.0, 90.0, 22.0 ],
                    "style": "newobjYellow",
                    "text": "serial e 115200"
                }
            },
            {
                "box": {
                    "id": "obj-167",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1027.0, 629.0, 29.5, 22.0 ],
                    "text": "14"
                }
            },
            {
                "box": {
                    "id": "obj-165",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1159.0, 394.0, 29.5, 22.0 ],
                    "text": "12"
                }
            },
            {
                "box": {
                    "id": "obj-163",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1166.0, 258.0, 29.5, 22.0 ],
                    "text": "11"
                }
            },
            {
                "box": {
                    "id": "obj-161",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1068.0, 60.0, 29.5, 22.0 ],
                    "text": "10"
                }
            },
            {
                "box": {
                    "id": "obj-159",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 253.0, 30.0, 29.5, 22.0 ],
                    "text": "24"
                }
            },
            {
                "box": {
                    "id": "obj-157",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 317.0, 330.0, 29.5, 22.0 ],
                    "text": "127"
                }
            },
            {
                "box": {
                    "id": "obj-155",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 269.0, 555.0, 29.5, 22.0 ],
                    "text": "2"
                }
            },
            {
                "box": {
                    "id": "obj-153",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 485.0, 46.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-152",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8.0, 553.0, 50.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-147",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1181.0, 771.0, 142.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 174.0, 63.0, 76.0, 22.0 ],
                    "text": "Debug On"
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1189.0, 801.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 181.0, 93.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1189.0, 849.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-150",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1224.0, 849.0, 29.5, 22.0 ],
                    "text": "13"
                }
            },
            {
                "box": {
                    "id": "obj-146",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 219.5, 453.0, 29.5, 22.0 ],
                    "text": "14"
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "number",
                    "maximum": 127,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 161.0, 453.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 32.0, 354.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-141",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 392.0, 304.0, 91.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 246.0, 227.0, 91.0, 22.0 ],
                    "text": "Note Played"
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 392.0, 363.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 249.0, 251.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "int", "int" ],
                    "patching_rect": [ 392.0, 333.0, 41.0, 22.0 ],
                    "text": "notein"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "kslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": 1,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 161.0, 394.0, 564.0, 53.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 32.0, 297.0, 564.0, 53.0 ],
                    "range": 80
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-133",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 164.5, 370.0, 76.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 32.0, 268.0, 173.0, 22.0 ],
                    "text": "Split Point"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 284.0, 657.0, 29.5, 22.0 ],
                    "text": "15"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-122",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 232.0, 590.0, 173.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 804.0, 335.0, 173.0, 22.0 ],
                    "text": "MIDI Channel B No."
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "number",
                    "maximum": 15,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 232.0, 681.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 804.0, 406.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 232.0, 623.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 804.0, 361.0, 40.0, 40.0 ],
                    "size": 15.0,
                    "valuepopup": 1,
                    "varname": "dial[5]"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-118",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 42.0, 590.0, 173.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 659.0, 335.0, 135.5, 22.0 ],
                    "text": "MIDI Channel A No."
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 106.0, 630.0, 29.5, 22.0 ],
                    "text": "18"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "number",
                    "maximum": 15,
                    "minimum": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 48.0, 663.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 659.0, 406.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 48.0, 621.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 659.0, 361.0, 40.0, 40.0 ],
                    "size": 15.0,
                    "valuepopup": 1,
                    "varname": "dial[4]"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1071.0, 152.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 860.0, 81.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1071.0, 135.5, 24.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 860.0, 64.0, 24.0, 20.0 ],
                    "text": "Off"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1071.0, 253.0, 24.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 861.0, 157.0, 24.0, 20.0 ],
                    "text": "Off"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1071.0, 275.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 861.0, 179.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1075.0, 302.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1071.0, 383.0, 24.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 860.0, 256.0, 24.0, 20.0 ],
                    "text": "Off"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1071.0, 405.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 860.0, 278.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1075.0, 432.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-97",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1075.0, 178.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1121.0, 948.0, 61.0, 22.0 ],
                    "text": "delay 100"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 927.0, 1013.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-86",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 867.0, 142.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.5, 63.0, 142.0, 22.0 ],
                    "text": "Calibrate Touch"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 979.0, 897.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 32.5, 93.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 979.0, 945.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1014.0, 945.0, 29.5, 22.0 ],
                    "text": "19"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 980.0, 359.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 798.0, 231.0, 150.0, 20.0 ],
                    "text": "Pot 2 CC No."
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1117.0, 432.0, 29.5, 22.0 ],
                    "text": "23"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 986.0, 432.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 804.0, 304.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 986.0, 390.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 804.0, 262.0, 40.0, 40.0 ],
                    "size": 127.0,
                    "valuepopup": 1,
                    "varname": "dial[3]"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 976.0, 231.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 800.0, 132.0, 150.0, 20.0 ],
                    "text": "Pot 1 CC No."
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1117.0, 302.0, 29.5, 22.0 ],
                    "text": "22"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 982.0, 304.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 806.0, 205.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-77",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 982.0, 262.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 806.0, 163.0, 40.0, 40.0 ],
                    "size": 127.0,
                    "valuepopup": 1,
                    "varname": "dial[2]"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 976.0, 105.0, 150.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 797.0, 34.0, 150.0, 20.0 ],
                    "text": "Pot 0 CC No."
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1117.0, 178.0, 29.5, 22.0 ],
                    "text": "21"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 982.0, 178.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 803.0, 107.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 982.0, 136.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 803.0, 65.0, 40.0, 40.0 ],
                    "size": 127.0,
                    "valuepopup": 1,
                    "varname": "dial[1]"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-69",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 971.0, 670.0, 173.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 615.0, 34.0, 173.0, 22.0 ],
                    "text": "Control Change Touch No."
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1031.25, 743.0, 29.5, 22.0 ],
                    "text": "27"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 977.0, 743.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 621.0, 107.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "dial",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 977.0, 701.0, 40.0, 40.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 621.0, 65.0, 40.0, 40.0 ],
                    "size": 127.0,
                    "valuepopup": 1,
                    "varname": "dial"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 819.0, 701.0, 44.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 161.0, 425.0, 44.0, 20.0 ],
                    "text": "Off"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 777.0, 701.0, 29.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 119.0, 425.0, 29.0, 20.0 ],
                    "text": "On"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-56",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 777.0, 674.0, 91.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 119.0, 398.0, 91.0, 22.0 ],
                    "text": "Note Touch"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 821.0, 723.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 163.0, 447.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 777.0, 723.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 119.0, 447.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 811.0, 771.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 777.0, 771.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 847.0, 771.0, 29.5, 22.0 ],
                    "text": "26"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 819.0, 548.0, 44.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 367.0, 425.0, 44.0, 20.0 ],
                    "text": "Off"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 777.0, 548.0, 29.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 325.0, 425.0, 29.0, 20.0 ],
                    "text": "On"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 777.0, 521.0, 91.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 325.0, 398.0, 91.0, 22.0 ],
                    "text": "CC Touch"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 821.0, 570.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 369.0, 447.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 777.0, 570.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 325.0, 447.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 811.0, 618.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 777.0, 618.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 847.0, 618.0, 29.5, 22.0 ],
                    "text": "25"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 819.0, 305.0, 44.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 266.0, 425.0, 44.0, 20.0 ],
                    "text": "Off"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 777.0, 305.0, 29.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 224.0, 425.0, 29.0, 20.0 ],
                    "text": "On"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 777.0, 278.0, 91.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 224.0, 398.0, 91.0, 22.0 ],
                    "text": "Aftertouch"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 821.0, 327.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 268.0, 447.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 777.0, 327.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 224.0, 447.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 811.0, 375.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 777.0, 375.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 847.0, 375.0, 29.5, 22.0 ],
                    "text": "24"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 819.0, 111.5, 44.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 58.0, 425.0, 44.0, 20.0 ],
                    "text": "Off"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 777.0, 111.5, 29.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 425.0, 29.0, 20.0 ],
                    "text": "On"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "obj-34",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 777.0, 84.5, 91.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 398.0, 91.0, 22.0 ],
                    "text": "MIDI Thru"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 821.0, 133.5, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 60.0, 447.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 777.0, 133.5, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 16.0, 447.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 811.0, 181.5, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 777.0, 181.5, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 847.0, 181.5, 29.5, 22.0 ],
                    "text": "20"
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 628.0, 80.0, 62.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 336.0, 33.0, 62.0, 24.0 ],
                    "text": "Scale"
                }
            },
            {
                "box": {
                    "bubble_outlinecolor": [ 0.13333333333333333, 0.13333333333333333, 0.13333333333333333, 1.0 ],
                    "fontsize": 24.0,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 57.0, 87.0, 288.0, 33.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 22.5, -5.0, 288.0, 33.0 ],
                    "text": "PicoTouch Control"
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 581.5, 111.5, 70.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 294.0, 69.0, 70.0, 20.0 ],
                    "text": "Pentatonic"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 661.0, 111.5, 64.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 367.0, 69.0, 64.0, 20.0 ],
                    "text": "Chromatic"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 666.0, 141.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 370.0, 98.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 622.0, 141.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 326.0, 98.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 167.0, 222.0, 50.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 32.0, 218.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 16.0,
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 57.0, 135.0, 192.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 32.5, 131.0, 192.0, 24.0 ],
                    "text": "Transpose"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 102.0, 512.0, 201.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 71.5, 35.0, 201.0, 20.0 ],
                    "text": "<- double click and set to Pico"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 113.0, 258.0, 29.5, 22.0 ],
                    "text": "16"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "kslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "offset": 1,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 57.0, 166.0, 564.0, 53.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 32.0, 163.0, 564.0, 53.0 ],
                    "range": 80
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 80.0, 258.0, 29.5, 22.0 ],
                    "text": "17"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 511.0, 40.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.5, 34.0, 40.0, 22.0 ],
                    "text": "ctlout"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 656.0, 189.0, 29.5, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 622.0, 189.0, 29.5, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 692.0, 189.0, 29.5, 22.0 ],
                    "text": "16"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 1084.5, 498.0, 49.5, 498.0 ],
                    "order": 1,
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "midpoints": [ 1084.5, 456.0, 1047.0, 456.0, 1047.0, 390.0, 1026.0, 390.0, 1026.0, 387.0, 995.5, 387.0 ],
                    "order": 0,
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "order": 1,
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "midpoints": [ 1080.5, 429.0, 1126.5, 429.0 ],
                    "order": 0,
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "order": 1,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "midpoints": [ 1080.5, 300.0, 1071.0, 300.0, 1071.0, 324.0, 1113.0, 324.0, 1113.0, 297.0, 1126.5, 297.0 ],
                    "order": 0,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 1084.5, 345.0, 888.0, 345.0, 888.0, 498.0, 49.5, 498.0 ],
                    "order": 1,
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "midpoints": [ 1084.5, 327.0, 1044.0, 327.0, 1044.0, 261.0, 1023.0, 261.0, 1023.0, 258.0, 991.5, 258.0 ],
                    "order": 0,
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 1080.5, 177.0, 1071.0, 177.0, 1071.0, 210.0, 1113.0, 210.0, 1113.0, 174.0, 1126.5, 174.0 ],
                    "order": 0,
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "order": 1,
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 89.5, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 0 ],
                    "order": 0,
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "order": 1,
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "order": 1,
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "order": 0,
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 0 ],
                    "order": 1,
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "order": 0,
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 66.5, 231.0, 162.0, 231.0, 162.0, 219.0, 176.5, 219.0 ],
                    "order": 0,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 66.5, 243.0, 89.5, 243.0 ],
                    "order": 2,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 66.5, 195.0, 49.5, 195.0 ],
                    "order": 3,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 66.5, 243.0, 122.5, 243.0 ],
                    "order": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-149", 0 ],
                    "order": 1,
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-150", 0 ],
                    "order": 0,
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 1198.5, 873.0, 1155.0, 873.0, 1155.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 1233.5, 882.0, 1155.0, 882.0, 1155.0, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-150", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "source": [ "obj-152", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-152", 0 ],
                    "order": 7,
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 0 ],
                    "order": 5,
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-157", 0 ],
                    "order": 4,
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 0 ],
                    "order": 6,
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-161", 0 ],
                    "order": 2,
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-163", 0 ],
                    "order": 0,
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-165", 0 ],
                    "order": 1,
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-167", 0 ],
                    "order": 3,
                    "source": [ "obj-153", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 631.5, 168.0, 405.0, 168.0, 405.0, 255.0, 122.5, 255.0 ],
                    "order": 2,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 0,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 1,
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-161", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-163", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "source": [ "obj-165", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-167", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 0,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 1,
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "midpoints": [ 1320.5, 272.291779, 1284.0, 272.291779, 1284.0, 277.66006500000003, 1281.5, 277.66006500000003 ],
                    "source": [ "obj-21", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "order": 1,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 0,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "order": 1,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "order": 0,
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 2 ],
                    "midpoints": [ 122.5, 498.0, 70.5, 498.0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 820.5, 264.0, 153.0, 264.0, 153.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 786.5, 264.0, 153.0, 264.0, 153.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 856.5, 264.0, 153.0, 264.0, 153.0, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "order": 1,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "order": 0,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "order": 1,
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "order": 0,
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 820.5, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 786.5, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 856.5, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "order": 1,
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "order": 0,
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 701.5, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "order": 1,
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "order": 0,
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 820.5, 651.0, 315.0, 651.0, 315.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 786.5, 642.0, 315.0, 642.0, 315.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 856.5, 651.0, 315.0, 651.0, 315.0, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "order": 1,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "order": 0,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "order": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "order": 0,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 820.5, 804.0, 315.0, 804.0, 315.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 786.5, 795.0, 315.0, 795.0, 315.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 856.5, 804.0, 315.0, 804.0, 315.0, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "order": 1,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "order": 0,
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 986.5, 768.0, 888.0, 768.0, 888.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 1040.75, 777.0, 888.0, 777.0, 888.0, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 631.5, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 1126.5, 216.0, 732.0, 216.0, 732.0, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 991.5, 216.0, 732.0, 216.0, 732.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 991.5, 177.0, 969.0, 177.0, 969.0, 210.0, 1113.0, 210.0, 1113.0, 174.0, 1126.5, 174.0 ],
                    "order": 0,
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "order": 1,
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 1126.5, 345.0, 888.0, 345.0, 888.0, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 991.5, 345.0, 888.0, 345.0, 888.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "midpoints": [ 991.5, 303.0, 969.0, 303.0, 969.0, 336.0, 1113.0, 336.0, 1113.0, 297.0, 1126.5, 297.0 ],
                    "order": 0,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "order": 1,
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 1126.5, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 995.5, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "midpoints": [ 995.5, 432.0, 972.0, 432.0, 972.0, 465.0, 1113.0, 465.0, 1113.0, 429.0, 1126.5, 429.0 ],
                    "order": 0,
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "order": 1,
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "order": 1,
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "midpoints": [ 988.5, 924.0, 936.5, 924.0 ],
                    "order": 2,
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "midpoints": [ 988.5, 924.0, 1130.5, 924.0 ],
                    "order": 0,
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 665.5, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 988.5, 969.0, 315.0, 969.0, 315.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 1 ],
                    "midpoints": [ 1023.5, 978.0, 315.0, 978.0, 315.0, 498.0, 60.0, 498.0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 936.5, 1038.0, 315.0, 1038.0, 315.0, 498.0, 49.5, 498.0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "midpoints": [ 1130.5, 972.0, 1053.0, 972.0, 1053.0, 930.0, 990.0, 930.0, 990.0, 942.0, 988.5, 942.0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "midpoints": [ 1084.5, 216.0, 732.0, 216.0, 732.0, 498.0, 49.5, 498.0 ],
                    "order": 1,
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "midpoints": [ 1084.5, 201.0, 1044.0, 201.0, 1044.0, 135.0, 1023.0, 135.0, 1023.0, 132.0, 991.5, 132.0 ],
                    "order": 0,
                    "source": [ "obj-97", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}