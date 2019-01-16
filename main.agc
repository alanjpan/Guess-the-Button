
// Project: test 
// Created: 2019-01-16

#include "Buttons.agc"

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Guess the Button" )
SetWindowAllowResize( 0 ) // allow the user to resize the window
SetWindowSize(768, 1024, 0)
SetDisplayAspect(768.0/1024)
SetBorderColor(255, 0, 0)


// set display properties
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts


SetUpButtons()


do
    total_seconds = Timer()
    
	value_entered = GetButtonEntry() 
	dice_throw = Random(0, 9)
	
	If value_entered = dice_throw
		Message("Correct!")
	Elseif value_entered <> dice_throw
		Message("Incorrect")
	EndIf


    
    red = Random(0, 255)
    green = Random(0, 255)
    blue = Random(0, 255)
    
    SetClearColor(red, green, blue)
    SetPrintColor(255 - red, 255 - green, 255 - blue)

    Sync()
loop
