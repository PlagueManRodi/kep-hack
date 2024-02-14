	db DEX_BELLIGNAN ; pokedex id

	db  80, 120,  65,  70,  95
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 191 ; base exp

	INCBIN "gfx/pokemon/front/bellignan.pic", 0, 1 ; sprite dimensions
	dw BellignanPicFront, BellignanPicBack

	db SLEEP_POWDER, RAZOR_LEAF, LOVELY_KISS, ACID ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         REST,         SUBSTITUTE,   \
	     CUT,          FLASH
	; end

	db BANK(BellignanPicFront)
	assert BANK(BellignanPicFront) == BANK(BellignanPicBack)
