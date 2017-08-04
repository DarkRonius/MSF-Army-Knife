local e={}

function e.OnAllocate()end
function e.OnInitialize()end

function e.Update()

	if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.DOWN)==PlayerPad.DOWN and bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.CALL)==PlayerPad.CALL)then

		TppMission.UpdateCheckPointAtCurrentPosition()
		
		TppUiCommand.AnnounceLogView("140.96: Mission Data Saved")
		
		TppUiCommand.AnnounceLogView("The tongues of dying men force attention, like deep harmony.") 
		
		TppUiCommand.AnnounceLogView("Where words are spent, they are seldom spent in vain.")

	end
	
	if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.LEFT)==PlayerPad.LEFT and bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.CALL)==PlayerPad.CALL)then

		TppUiCommand.AnnounceLogView("I want to get off Mr Bones Wild Ride")
		
		Player.ResetPadMask {
		settingName = "limitMove"
		}

		Player.ResetPadMask {
		settingName = "restrictAttacks"
		}

	end

	if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.UP)==PlayerPad.UP and bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.CALL)==PlayerPad.CALL)then

		Player.ResetLifeMaxValue()
		
		TppUiCommand.AnnounceLogView("Your Life/Psyche is looking good, Snake!")

	end
	
end

function e.OnTerminate()end
return e

