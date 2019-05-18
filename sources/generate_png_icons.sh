#!/bin/bash

INK=/usr/bin/inkscape

RESOURCES_APP="../fhq/app/src/main/res/"

function makeMipmapPng48x48 {
    SVG=$1
    RESDIR=$2
    BASE=$3
    echo "Will be $1 converted to "$BASE".png"
    OUT=$RESDIR"mipmap-mdpi/"$BASE".png"
    $INK -z -D --export-area-page -e $OUT  -f $SVG -w 48 -h 48
    OUT=$RESDIR"mipmap-hdpi/"$BASE".png"
    $INK -z -D --export-area-page -e $OUT  -f $SVG -w 72 -h 72
    OUT=$RESDIR"mipmap-xhdpi/"$BASE".png"
    $INK -z -D --export-area-page -e $OUT  -f $SVG -w 96 -h 96
    OUT=$RESDIR"mipmap-xxhdpi/"$BASE".png"
    $INK -z -D --export-area-page -e $OUT  -f $SVG -w 144 -h 144
    OUT=$RESDIR"mipmap-xxxhdpi/"$BASE".png"
    $INK -z -D --export-area-page -e $OUT  -f $SVG -w 192 -h 192
}

makeMipmapPng48x48 "svg/ic_launcher.svg" $RESOURCES_APP "ic_launcher"
makeMipmapPng48x48 "svg/ic_launcher_round.svg" $RESOURCES_APP "ic_launcher_round"
