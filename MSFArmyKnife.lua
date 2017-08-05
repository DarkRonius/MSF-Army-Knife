local e={}

local gameTicks = 0
local pressTicks = 0

local PRESS_TICK_DELAY = 30 -- = 0.5 seconds

function e.OnAllocate()end
function e.OnInitialize()end

function e.Update()

	if(pressTicks < gameTicks)then

		if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.DOWN)==PlayerPad.DOWN and bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.CALL)==PlayerPad.CALL)then

			TppMission.UpdateCheckPointAtCurrentPosition()
			
			TppUiCommand.AnnounceLogView("140.96: Mission Data Saved")
			
			TppUiCommand.AnnounceLogView("The tongues of dying men force attention, like deep harmony.") 
			
			TppUiCommand.AnnounceLogView("Where words are spent, they are seldom spent in vain.")

			pressTicks = gameTicks + PRESS_TICK_DELAY

		end
		
		if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.LEFT)==PlayerPad.LEFT and bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.CALL)==PlayerPad.CALL)then

			vars.playerDisableActionFlag = PlayerDisableAction.NONE
			
			Player.ResetPadMask {
				settingName = "limitMove"
			}

			Player.ResetPadMask {
				settingName = "restrictAttacks"
			}

			Player.ResetPadMask {
				settingName = "CodeTalkerMonologue",	
			}

			Player.ResetPadMask {
				settingName = "cypr_bed"
			}

			Player.ResetPadMask {
				settingName = "cypr_normal"
			}

			Player.ResetPadMask {
				settingName = "cypr_beforeGetGun"
			}

			Player.ResetPadMask {
				settingName = "cypr_combat"
			}

			Player.ResetPadMask {
				settingName = "cypr_demo"
			}

			Player.ResetPadMask {
				settingName = "cypr_loading"
			}

			Player.ResetPadMask {
				settingName = "cypr_avatar"
			}

			Player.ResetPadMask {
				settingName = "cypr_entrance_qte"
			}

			Player.ResetPadMask {
				settingName = "cypr_corridor"
			}

			Player.ResetPadMask {
				settingName = "cypr_gameOver"
			}

			Player.ResetPadMask {
				settingName = "cypr_2f"
			}

			Player.ResetPadMask {
				settingName = "cypr_camera"
			}

			Player.ResetPadMask {
				settingName = "cypr_all"
			}

			vars.playerDisableActionFlag = PlayerDisableAction.NONE

			TppUiCommand.AnnounceLogView("141.12: Actions Enabled")

			TppUiCommand.AnnounceLogView("Otacon, I can't move!")

			pressTicks = gameTicks + PRESS_TICK_DELAY

		end

		if (bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.UP)==PlayerPad.UP and bit.band(PlayerVars.scannedButtonsDirect,PlayerPad.CALL)==PlayerPad.CALL)then

			if vars.missionCode ~= 50050 then
  				if Tpp.IsSoldier(r)
    			or Tpp.IsHostage(r)
    				then
     		 	GameObject.SendCommand( r, { id = "RequestForceFulton" } ) --r1
  			end
			
			TppUiCommand.AnnounceLogView("140.85: Fulton request received")

			pressTicks = gameTicks + PRESS_TICK_DELAY

		end
		
	end

	gameTicks = gameTicks + 1

end

function e.OnTerminate()end
return e

