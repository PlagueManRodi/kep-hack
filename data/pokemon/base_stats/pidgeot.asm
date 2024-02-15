	db DEX_PIDGEOT ; pokedex id

	db  83,  90,  75, 102,  90
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp

	INCBIN "gfx/pokemon/front/pidgeot.pic", 0, 1 ; sprite dimensions
	dw PidgeotPicFront, PidgeotPicBack

	db GUST, SAND_ATTACK, QUICK_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,   TOXIC,       TAKE_DOWN,    DOUBLE_EDGE,  \
	     BLIZZARD,     HYPER_BEAM,  RAGE,        THUNDER,      MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,     BIDE,        FIRE_BLAST,   SWIFT,        \
	     SKY_ATTACK,   REST,        SUBSTITUTE,  FLY
	; end

	db BANK(PidgeotPicFront)
	assert BANK(PidgeotPicFront) == BANK(PidgeotPicBack)
