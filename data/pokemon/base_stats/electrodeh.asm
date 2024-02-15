	db DEX_ELECTRODE_H ; pokedex id

	db  60,  50,  70, 150,  80
	;   hp  atk  def  spd  spc

	db ELECTRIC, GRASS ; type
	db 60 ; catch rate
	db 150 ; base exp

	INCBIN "gfx/pokemon/front/electrodeh.pic", 0, 1 ; sprite dimensions
	dw ElectrodeHPicFront, ElectrodeHPicBack

	db TACKLE, SCREECH, SONICBOOM, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    HYPER_BEAM,   RAGE,         MEGA_DRAIN,   \
	     SOLARBEAM,	   THUNDERBOLT,  THUNDER,      TELEPORT,     MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         SELFDESTRUCT, SWIFT,        \
	     SKULL_BASH,   REST,         THUNDER_WAVE, EXPLOSION,    SUBSTITUTE,   \
		 FLASH
	; end

	db BANK(ElectrodeHPicFront)
	assert BANK(ElectrodeHPicFront) == BANK(ElectrodeHPicBack)
