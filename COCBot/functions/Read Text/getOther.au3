;Returns complete value of other

Func getOther($x_start, $y_start, $type, $totalcamp = false)
    _CaptureRegion(0, 0, $x_start + 120, $y_start + 20)
    ;-----------------------------------------------------------------------------
    Local $x = $x_start, $y = $y_start
    Local $Number, $i = 0

    Switch $type
        Case "Trophy"
            $Number = getDigit($x, $y, "Other")

            While $Number = ""
                If $i >= 50 Then ExitLoop
                $i += 1
                $x += 1
                $Number = getDigit($x, $y, "Other")
            WEnd

            $Number &= getDigit($x, $y, "Other")
            $Number &= getDigit($x, $y, "Other")
            $Number &= getDigit($x, $y, "Other")

        Case "Builder"
            $Number = getDigit($x, $y, "Builder")

            While $Number = ""
                If $i >= 10 Then ExitLoop
                $i += 1
                $x += 1
                $Number = getDigit($x, $y, "Builder")
            WEnd

        Case "Gems"
            $Number = getDigit($x, $y, "Other")

            While $Number = ""
                If $i >= 90 Then ExitLoop
                $i += 1
                $x += 1
                $Number = getDigit($x, $y, "Other")
            WEnd

            $Number &= getDigit($x, $y, "Other")
            $Number &= getDigit($x, $y, "Other")
            $Number &= getDigit($x, $y, "Other")
            $x += 6
            $Number &= getDigit($x, $y, "Other")
            $Number &= getDigit($x, $y, "Other")
            $Number &= getDigit($x, $y, "Other")

        Case "Resource"
            $Number = getDigit($x, $y, "Resource")

            While $Number = ""
                If $i >= 120 Then ExitLoop
                $i += 1
                $x += 1
                $Number = getDigit($x, $y, "Resource")
            WEnd

            $Number &= getDigit($x, $y, "Resource")
            $Number &= getDigit($x, $y, "Resource")
            $Number &= getDigit($x, $y, "Resource")
            $x += 6
            $Number &= getDigit($x, $y, "Resource")
            $Number &= getDigit($x, $y, "Resource")
            $Number &= getDigit($x, $y, "Resource")
            $x += 6
            $Number &= getDigit($x, $y, "Resource")
            $Number &= getDigit($x, $y, "Resource")
            $Number &= getDigit($x, $y, "Resource")

        Case "Camp"
            $Number = getDigitSmall($x, $y, "Camp")

            While $Number = ""
                If $i >= 20 Then ExitLoop
                $i += 1
                $x += 1
                $Number = getDigitSmall($x, $y, "Camp")
            WEnd

            $Number &= getDigitSmall($x, $y, "Camp")
            $Number &= getDigitSmall($x, $y, "Camp")

			If $totalcamp Then
			   $x += 6
			   $Number = ""
			   While $Number = ""
				   If $i >= 20 Then ExitLoop
				   $i += 1
				   $x += 1
				   $Number = getDigitSmall($x, $y, "Camp")
			   WEnd

			   $Number &= getDigitSmall($x, $y, "Camp")
			   $Number &= getDigitSmall($x, $y, "Camp")
			EndIf
        Case "Barrack"
            $Number = getDigit($x, $y, "Other")

            While $Number = ""
                If $i >= 20 Then ExitLoop
                $i += 1
                $x += 1
                $Number = getDigit($x, $y, "Other")
            WEnd

            $Number &= getDigit($x, $y, "Other")
            $Number &= getDigit($x, $y, "Other")
            $Number &= getDigit($x, $y, "Other")
        Case "UpgRed"
           $Number = getDigit($x, $y, "ResourceUpgRed")

           While $Number = ""
               If $i >= 95 Then ExitLoop ; 90px to 7 digits
               $i += 1
               $x += 1
               $Number = getDigit($x, $y, "ResourceUpgRed")
           WEnd

           $Number &= getDigit($x, $y, "ResourceUpgRed")
           $Number &= getDigit($x, $y, "ResourceUpgRed")
           $Number &= getDigit($x, $y, "ResourceUpgRed")
           $Number &= getDigit($x, $y, "ResourceUpgRed")
           $Number &= getDigit($x, $y, "ResourceUpgRed")
           $Number &= getDigit($x, $y, "ResourceUpgRed")
           $Number &= getDigit($x, $y, "ResourceUpgRed")
    EndSwitch

    Return $Number
EndFunc   ;==>getOther