SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, EVENITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, LEECH_SEED
	db 11, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 18, RAZOR_LEAF
	db 22, ACID
	db 25, GROWTH
	db 29, SYNTHESIS
	db 32, SWORDS_DANCE
	db 36, GIGA_DRAIN
	db 39, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 1, POISONPOWDER
	db 1, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 24, ACID
	db 26, GROWTH
	db 31, SYNTHESIS
	db 34, SWORDS_DANCE
	db 38, GIGA_DRAIN
	db 41, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, RAZOR_LEAF
	db 1, SLEEP_POWDER
	db 1, ACID
	db 33, SYNTHESIS
	db 36, SWORDS_DANCE
	db 40, GIGA_DRAIN
	db 43, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 4, GROWL
	db 8, EMBER
	db 11, SCARY_FACE
	db 15, RAGE
	db 18, FIRE_SPIN
	db 22, SLASH
	db 25, DRAGON_RAGE
	db 29, FLAMETHROWER
	db 32, ROCK_SLIDE
	db 36, BELLY_DRUM
	db 39, OUTRAGE
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, EMBER
	db 1, SCARY_FACE	
	db 1, RAGE
	db 20, FIRE_SPIN
	db 24, SLASH
	db 27, DRAGON_RAGE
	db 31, FLAMETHROWER
	db 34, ROCK_SLIDE
	db 38, BELLY_DRUM
	db 41, OUTRAGE
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, ROCK_SLIDE
	db 1, FLAMETHROWER
	db 1, WING_ATTACK
	db 36, WING_ATTACK
	db 41, BELLY_DRUM
	db 44, OUTRAGE
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 4, TAIL_WHIP
	db 8, BUBBLE
	db 12, WITHDRAW
	db 15, WATER_GUN
	db 19, BUBBLEBEAM
	db 22, BITE
	db 26, REFLECT
	db 29, SEISMIC_TOSS
	db 33, CRUNCH
	db 36, SKULL_BASH
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, BUBBLE
	db 1, WITHDRAW
	db 1, WATER_GUN
	db 21, BUBBLEBEAM
	db 24, BITE
	db 28, REFLECT
	db 31, SEISMIC_TOSS
	db 35, CRUNCH
	db 38, SKULL_BASH
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, BUBBLEBEAM
	db 1, CRUNCH
	db 1, SKULL_BASH
	db 40, SKULL_BASH
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 18, GUST
	db 21, SUPERSONIC	
	db 26, GROWTH
	db 28, WHIRLWIND	
	db 34, PSYBEAM
	db 38, RAZOR_WIND
	db 40, SAFEGUARD
	db 99, TELEPORT	
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 10, RAGE
	db 15, FURY_ATTACK
	db 20, FOCUS_ENERGY
	db 25, TWINEEDLE	
	db 30, AGILITY
	db 35, SWORDS_DANCE
	db 40, DRILL_PECK
	db 45, PURSUIT
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 8, GUST
	db 12, QUICK_ATTACK
	db 16, WHIRLWIND
	db 19, PURSUIT
	db 25, WING_ATTACK
	db 29, TWISTER
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, SAND_ATTACK
	db 1, GUST
	db 1, QUICK_ATTACK
	db 1, WHIRLWIND
	db 22, PURSUIT
	db 27, WING_ATTACK
	db 32, TWISTER
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, WHIRLWIND
	db 1, PURSUIT
	db 1, WING_ATTACK
	db 1, TWISTER
	db 36, EXTREMESPEED
	db 40, MIRROR_MOVE
	db 44, AGILITY
	db 48, SKY_ATTACK
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, FOCUS_ENERGY
	db 27, PURSUIT
	db 34, SUPER_FANG
	db 39, CRUNCH
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, HYPER_FANG
	db 20, SCARY_FACE
	db 30, PURSUIT
	db 40, SUPER_FANG
	db 46, CRUNCH
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 7, LEER
	db 13, FURY_ATTACK
	db 22, MIRROR_MOVE
	db 27, DRILL_PECK
	db 32, PURSUIT
	db 36, ROCK_SLIDE
	db 40, AGILITY
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, LEER
	db 1, WING_ATTACK
	db 1, FURY_ATTACK
	db 20, WING_ATTACK
	db 27, MIRROR_MOVE
	db 32, DRILL_PECK
	db 36, PURSUIT
	db 40, ROCK_SLIDE
	db 44, AGILITY
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 7, POISON_STING
	db 12, BITE
	db 16, ACID
	db 21, GLARE
	db 25, SCREECH
	db 31, SUPER_FANG
	db 35, SUBSTITUTE
	db 40, CRUNCH
	db 44, HAZE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, BITE
	db 1, ACID
	db 1, GLARE
	db 27, SCREECH
	db 33, SUPER_FANG
	db 37, SUBSTITUTE
	db 42, CRUNCH
	db 46, HAZE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 20, SLAM
	db 26, THUNDERBOLT
	db 33, AGILITY
	db 41, THUNDER
	db 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 20, SLAM
	db 26, THUNDERBOLT
	db 33, AGILITY
	db 41, THUNDER
	db 50, LIGHT_SCREEN	
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, DEFENSE_CURL
	db 11, SAND_ATTACK
	db 17, POISON_STING
	db 23, SLASH
	db 27, METAL_CLAW
	db 30, SWIFT
	db 34, ROCK_SLIDE
	db 37, FURY_SWIPES
	db 41, SANDSTORM
	db 45, SWORDS_DANCE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SAND_ATTACK
	db 1, POISON_STING
	db 24, SLASH
	db 28, METAL_CLAW
	db 33, SWIFT
	db 37, ROCK_SLIDE
	db 42, FURY_SWIPES
	db 48, SANDSTORM
	db 52, SWORDS_DANCE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, BITE	
	db 1, TAIL_WHIP
	db 8, SCRATCH	
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 22, CHARM
	db 27, FURY_SWIPES
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, BITE
	db 1, TAIL_WHIP
	db 1, SCRATCH	
	db 1, DOUBLE_KICK
	db 19, POISON_STING
	db 24, CHARM
	db 29, FURY_SWIPES
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 1, CHARM
	db 1, BODY_SLAM
	db 21, POISON_STING
	db 26, CHARM
	db 31, FURY_SWIPES
	db 40, BODY_SLAM
	db 44, CRUNCH
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 22, FOCUS_ENERGY
	db 27, FURY_ATTACK
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 1, HORN_ATTACK
	db 1, DOUBLE_KICK
	db 19, POISON_STING
	db 24, FOCUS_ENERGY
	db 29, FURY_ATTACK
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 1, FOCUS_ENERGY
	db 1, THRASH
	db 21, POISON_STING
	db 26, FOCUS_ENERGY
	db 31, FURY_ATTACK
	db 35, THRASH
	db 40, HORN_DRILL
	db 44, SUBMISSION
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, METRONOME
	db 8, SING
	db 13, DOUBLESLAP
	db 19, MOONLIGHT
	db 26, DEFENSE_CURL
	db 30, CHARM
	db 34, ENCORE
	db 43, MINIMIZE
	db 53, LIGHT_SCREEN
	db 99, TELEPORT
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, METRONOME
	db 1, MOONLIGHT
	db 1, SING
	db 1, DOUBLESLAP
	db 19, MOONLIGHT
	db 26, DEFENSE_CURL
	db 30, CHARM
	db 34, ENCORE
	db 43, MINIMIZE
	db 53, LIGHT_SCREEN
	db 99, TELEPORT
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, CONFUSE_RAY
	db 19, ROAR
	db 25, SAFEGUARD
	db 31, FLAMETHROWER
	db 34, SUBSTITUTE
	db 37, FLAME_WHEEL
	db 43, AURORA_BEAM
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 7, QUICK_ATTACK
	db 13, CONFUSE_RAY
	db 19, ROAR
	db 25, SAFEGUARD
	db 31, FLAMETHROWER
	db 34, SUBSTITUTE
	db 37, FLAME_WHEEL
	db 43, AURORA_BEAM
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, DISABLE
	db 19, ROLLOUT
	db 24, DOUBLESLAP
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 45, THUNDER_WAVE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DISABLE
	db 1, DEFENSE_CURL
	db 1, DOUBLESLAP
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 45, THUNDER_WAVE
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 24, SCREECH
	db 27, MEAN_LOOK
	db 31, HAZE
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, BITE
	db 1, CONFUSE_RAY
	db 1, WING_ATTACK
	db 22, WING_ATTACK
	db 26, SCREECH
	db 30, MEAN_LOOK
	db 35, HAZE
	db 40, RAZOR_WIND	
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 13, POISONPOWDER
	db 13, STUN_SPORE
	db 18, ACID
	db 23, SLEEP_POWDER
	db 28, MEGA_DRAIN
	db 33, MOONLIGHT
	db 38, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, POISONPOWDER
	db 1, STUN_SPORE
	db 1, ACID
	db 25, SLEEP_POWDER
	db 30, MEGA_DRAIN
	db 35, MOONLIGHT
	db 40, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, POISONPOWDER
	db 1, STUN_SPORE
	db 1, SLEEP_POWDER
	db 29, ACID
	db 34, GROWTH
	db 39, MOONLIGHT
	db 44, PETAL_DANCE	
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, ABSORB
	db 8, LEECH_LIFE
	db 12, STUN_SPORE
	db 15, FALSE_SWIPE
	db 19, POISONPOWDER
	db 22, SPORE
	db 26, MEGA_DRAIN
	db 29, LEECH_SEED
	db 33, GROWTH
	db 36, GIGA_DRAIN
	db 40, SWORDS_DANCE
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, LEECH_LIFE
	db 1, SPORE
	db 1, SLASH
	db 24, SLASH
	db 28, MEGA_DRAIN
	db 31, LEECH_SEED
	db 35, GROWTH
	db 38, GIGA_DRAIN
	db 42, SWORDS_DANCE
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, SUPERSONIC
	db 8, LEECH_LIFE
	db 13, POISONPOWDER
	db 19, CONFUSION
	db 24, STUN_SPORE
	db 28, PSYBEAM
	db 33, SLEEP_POWDER
	db 37, GIGA_DRAIN
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISABLE
	db 1, SUPERSONIC
	db 1, STUN_SPORE
	db 1, PSYBEAM
	db 31, SUBSTITUTE
	db 36, SLEEP_POWDER
	db 40, GIGA_DRAIN
	db 44, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DIG
	db 5, GROWL
	db 9, MAGNITUDE
	db 15, SAND_ATTACK
	db 22, PURSUIT
	db 28, SLASH
	db 34, SUBSTITUTE
	db 39, EARTHQUAKE
	db 44, METAL_CLAW
	db 49, ANCIENTPOWER
	db 54, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, DIG
	db 1, SAND_ATTACK
	db 1, PURSUIT
	db 1, TRI_ATTACK
	db 26, TRI_ATTACK
	db 31, SLASH
	db 37, SUBSTITUTE
	db 43, EARTHQUAKE
	db 48, METAL_CLAW
	db 53, ANCIENTPOWER
	db 58, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 9, BITE
	db 13, PAY_DAY
	db 17, SCREECH
	db 21, FALSE_SWIPE
	db 25, FAINT_ATTACK	
	db 30, SHARPEN
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, PAY_DAY
	db 1, SCREECH
	db 1, FAINT_ATTACK		
	db 1, SLASH
	db 28, SLASH
	db 32, SHARPEN
	db 36, CRUNCH
	db 40, BUBBLEBEAM
	db 44, METAL_CLAW
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 9, WATER_GUN
	db 13, DISABLE
	db 16, CONFUSION
	db 21, SCREECH
	db 25, AMNESIA
	db 31, PSYCHIC_M
	db 36, FURY_SWIPES
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, DISABLE
	db 1, WATER_GUN
	db 1, AMNESIA
	db 1, PSYCHIC_M
	db 38, FURY_SWIPES
	db 44, CROSS_CHOP
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, LOW_KICK
	db 12, FURY_SWIPES
	db 16, FOCUS_ENERGY
	db 19, SEISMIC_TOSS
	db 22, ROCK_THROW
	db 25, SCREECH
	db 30, MEGA_PUNCH
	db 33, MEDITATE
	db 36, THRASH
	db 40, ROCK_SLIDE
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, SCREECH
	db 1, MEGA_PUNCH
	db 1, RAGE	
	db 28, RAGE
	db 32, MEGA_PUNCH
	db 35, MEDITATE
	db 38, THRASH
	db 42, ROCK_SLIDE
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, BITE
	db 1, ROAR
	db 9, EMBER
	db 13, GROWL
	db 18, TAKE_DOWN
	db 22, FLAME_WHEEL
	db 27, AGILITY
	db 31, CRUNCH
	db 36, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROAR
	db 1, GROWL
	db 1, TAKE_DOWN
	db 1, FLAME_WHEEL
	db 15, EMBER
	db 19, GROWL
	db 24, TAKE_DOWN
	db 28, FLAME_WHEEL
	db 33, AGILITY
	db 37, CRUNCH
	db 42, FLAMETHROWER
	db 46, EXTREMESPEED
	db 51, SOLARBEAM
	db 55, ANCIENTPOWER
	db 99, TELEPORT
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 18, BUBBLEBEAM
	db 23, MIST
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, BUBBLEBEAM
	db 1, MIST
	db 1, DOUBLESLAP
	db 25, DOUBLESLAP
	db 28, BODY_SLAM
	db 38, HYDRO_PUMP
	db 42, BELLY_DRUM
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, BUBBLEBEAM
	db 1, MIST
	db 1, MEGA_PUNCH
	db 28, MEGA_PUNCH		
	db 31, BODY_SLAM
	db 35, MIND_READER
	db 38, HYDRO_PUMP
	db 42, CROSS_CHOP
	db 45, BELLY_DRUM	
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_LEVEL, 38, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 40, PSYCHIC_M
	db 43, REFLECT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, FUTURE_SIGHT
	db 1, DISABLE
	db 1, PSYBEAM
	db 1, RECOVER
	db 44, PSYCHIC_M
	db 47, REFLECT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 31, VITAL_THROW
	db 34, ROCK_SLIDE
	db 37, CROSS_CHOP
	db 43, SCARY_FACE
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_LEVEL, 38, MACHAMP
	db 0 ; no more evolutions
	db 1, FOCUS_ENERGY
	db 1, KARATE_CHOP
	db 1, SEISMIC_TOSS
	db 1, FORESIGHT
	db 34, VITAL_THROW
	db 38, ROCK_SLIDE
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, FOCUS_ENERGY
	db 1, SEISMIC_TOSS
	db 1, VITAL_THROW
	db 1, ROCK_SLIDE	
	db 38, ROCK_SLIDE
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, GROWTH
	db 10, WRAP
	db 13, SLEEP_POWDER
	db 16, POISONPOWDER
	db 19, STUN_SPORE
	db 22, RAZOR_LEAF
	db 26, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	db 1, SLEEP_POWDER
	db 21, ACID
	db 26, RAZOR_LEAF
	db 31, SLAM
	db 36, CRUNCH
	db 41, SWORDS_DANCE
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAZOR_LEAF
	db 1, GROWTH
	db 1, SLEEP_POWDER
	db 1, ACID
	db 29, RAZOR_LEAF
	db 34, SLAM
	db 39, CRUNCH
	db 44, SWORDS_DANCE
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 5, SUPERSONIC
	db 10, CONSTRICT
	db 14, ACID
	db 19, BUBBLEBEAM
	db 23, WRAP
	db 32, SCREECH
	db 37, HYDRO_PUMP
	db 42, SUBSTITUTE
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, BARRIER	
	db 1, BUBBLEBEAM
	db 1, ACID
	db 30, BARRIER
	db 34, SCREECH
	db 39, HYDRO_PUMP
	db 44, SUBSTITUTE
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 26, HARDEN
	db 31, ROLLOUT
	db 36, EARTHQUAKE
	db 39, ROCK_SLIDE
	db 41, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_LEVEL, 38, GOLEM
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 1, SELFDESTRUCT
	db 27, HARDEN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 44, ROCK_SLIDE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, MAGNITUDE
	db 1, SELFDESTRUCT
	db 1, ROLLOUT
	db 41, EARTHQUAKE
	db 45, ROCK_SLIDE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, TAIL_WHIP
	db 11, EMBER
	db 16, STOMP
	db 21, FIRE_SPIN
	db 26, DOUBLE_KICK	
	db 31, BODY_SLAM
	db 38, AGILITY
	db 44, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_SPIN
	db 1, DOUBLE_KICK	
	db 1, BODY_SLAM
	db 1, AGILITY
	db 40, FURY_ATTACK
	db 48, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 39, FUTURE_SIGHT
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 99, TELEPORT
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, CONFUSION
	db 1, HEADBUTT
	db 1, CURSE
	db 37, WITHDRAW
	db 42, FUTURE_SIGHT
	db 46, AMNESIA
	db 54, PSYCHIC_M
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 23, MAGNITUDE
	db 28, LOCK_ON
	db 33, SWIFT
	db 39, SCREECH
	db 45, ZAP_CANNON
	db 48, REFLECT
	db 48, LIGHT_SCREEN	
	db 99, TELEPORT
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, SONICBOOM
	db 1, THUNDER_WAVE
	db 1, MAGNITUDE
	db 35, TRI_ATTACK
	db 43, SCREECH
	db 53, ZAP_CANNON
	db 56, REFLECT
	db 56, LIGHT_SCREEN		
	db 99, TELEPORT	
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 7, SAND_ATTACK
	db 13, LEER
	db 19, FURY_ATTACK
	db 25, WING_ATTACK
	db 31, AGILITY
	db 37, SLASH
	db 44, FALSE_SWIPE
	db 49, DRILL_PECK
	db 53, SWORDS_DANCE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 33, DRILL_PECK
	db 37, AGILITY
	db 43, LOW_KICK
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK	
	db 1, GROWL	
	db 1, PURSUIT
	db 1, TRI_ATTACK
	db 38, DRILL_PECK
	db 47, AGILITY
	db 55, LOW_KICK
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, PECK
	db 1, GROWL
	db 9, AURORA_BEAM
	db 16, ENCORE
	db 22, REST
	db 28, DRILL_PECK
	db 36, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, AURORA_BEAM
	db 1, ENCORE
	db 1, REST
	db 1, DRILL_PECK
	db 34, ICE_BEAM
	db 40, SAFEGUARD
	db 46, TAKE_DOWN
	db 51, HORN_DRILL
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, SLUDGE
	db 14, DISABLE
	db 18, MINIMIZE
	db 23, PURSUIT	
	db 27, SCREECH
	db 34, SLUDGE_BOMB	
	db 40, EXPLOSION
	db 44, ACID_ARMOR
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, PURSUIT
	db 1, DISABLE
	db 1, SLUDGE_BOMB
	db 1, MINIMIZE
	db 45, EXPLOSION
	db 50, ACID_ARMOR
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, WITHDRAW
	db 8, AURORA_BEAM
	db 13, SUPERSONIC
	db 18, BUBBLEBEAM	
	db 23, PROTECT
	db 28, CLAMP
	db 33, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, WITHDRAW
	db 1, AURORA_BEAM
	db 1, SUPERSONIC
	db 20, BUBBLEBEAM	
	db 25, PROTECT
	db 30, CLAMP
	db 35, ICE_BEAM
	db 40, SPIKES
	db 45, SPIKE_CANNON	
	db 50, EXPLOSION
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 7, SPITE
	db 11, MEAN_LOOK
	db 13, SMOG
	db 16, CURSE
	db 20, NIGHT_SHADE
	db 24, SLUDGE
	db 28, CONFUSE_RAY
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL, 38, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, CURSE
	db 1, SLUDGE
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SLUDGE
	db 1, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 9, BIND
	db 14, ROCK_THROW
	db 18, HARDEN
	db 23, RAGE
	db 27, SANDSTORM
	db 32, ROCK_SLIDE
	db 36, SLAM
	db 40, EARTHQUAKE
	db 45, EXPLOSION
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 8, DISABLE
	db 14, CONFUSION
	db 19, DREAM_EATER
	db 24, SEISMIC_TOSS
	db 30, POISON_GAS
	db 35, MEDITATE
	db 39, PSYCHIC_M
	db 44, FUTURE_SIGHT
	db 47, THUNDER_WAVE
	db 99, TELEPORT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, SEISMIC_TOSS
	db 1, DREAM_EATER
	db 1, HYPNOSIS
	db 33, POISON_GAS
	db 38, MEDITATE
	db 42, PSYCHIC_M
	db 47, FUTURE_SIGHT
	db 51, THUNDER_WAVE
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, LEER
	db 12, VICEGRIP
	db 16, BUBBLEBEAM
	db 19, HARDEN
	db 23, STOMP
	db 27, CRABHAMMER
	db 32, PROTECT
	db 35, METAL_CLAW
	db 40, GUILLOTINE
	db 45, ROCK_SLIDE
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HARDEN
	db 1, VICEGRIP
	db 1, CRABHAMMER
	db 35, PROTECT
	db 40, METAL_CLAW
	db 45, GUILLOTINE	
	db 50, ROCK_SLIDE
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 9, SPARK
	db 13, SCREECH
	db 17, SONICBOOM
	db 26, SELFDESTRUCT	
	db 29, ROLLOUT
	db 33, LIGHT_SCREEN
	db 37, SUBSTITUTE
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SONICBOOM
	db 1, SPARK
	db 1, SELFDESTRUCT
	db 1, ROLLOUT
	db 34, LIGHT_SCREEN
	db 40, SUBSTITUTE
	db 44, EXPLOSION
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 7, REFLECT
	db 13, LEECH_SEED
	db 19, CONFUSION	
	db 25, STUN_SPORE
	db 31, POISONPOWDER
	db 34, SYNTHESIS
	db 37, SLEEP_POWDER
	db 43, SOLARBEAM
	db 99, TELEPORT
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 19, STOMP
	db 31, EGG_BOMB
	db 39, SYNTHESIS
	db 43, SLEEP_POWDER	
	db 47, SOLARBEAM	
	db 51, EXPLOSION
	db 99, TELEPORT		
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 28, RAGE
	db 31, ROCK_SLIDE
	db 33, FALSE_SWIPE
	db 37, THRASH
	db 41, BONE_RUSH
	db 45, SWORDS_DANCE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, BONE_CLUB
	db 1, HEADBUTT
	db 1, FOCUS_ENERGY
	db 1, BONEMERANG
	db 32, RAGE
	db 35, ROCK_SLIDE
	db 39, FALSE_SWIPE
	db 46, THRASH
	db 53, BONE_RUSH
	db 57, SWORDS_DANCE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 6, MEDITATE
	db 11, ROLLING_KICK
	db 16, JUMP_KICK
	db 21, FOCUS_ENERGY
	db 26, MEGA_KICK
	db 31, MIND_READER
	db 36, FORESIGHT
	db 41, ENDURE
	db 46, HI_JUMP_KICK
	db 51, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 7, AGILITY
	db 13, PURSUIT
	db 16, MACH_PUNCH	
	db 26, MEGA_PUNCH
	db 31, TRI_ATTACK
	db 38, DETECT
	db 43, COUNTER
	db 51, SWORDS_DANCE
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 7, SUPERSONIC
	db 13, STOMP
	db 19, DEFENSE_CURL
	db 25, WRAP
	db 31, DISABLE
	db 37, BODY_SLAM
	db 43, SCREECH
	db 45, HEAL_BELL
	db 49, BELLY_DRUM
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 8, SMOG
	db 15, SELFDESTRUCT
	db 19, SLUDGE
	db 23, SMOKESCREEN
	db 26, HAZE
	db 32, FLAME_WHEEL
	db 36, PAIN_SPLIT	
	db 40, EXPLOSION
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, SELFDESTRUCT
	db 1, SLUDGE
	db 1, HAZE
	db 1, FLAME_WHEEL
	db 39, PAIN_SPLIT	
	db 44, EXPLOSION
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 13, STOMP
	db 23, MAGNITUDE
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 42, TAKE_DOWN
	db 45, ROCK_SLIDE
	db 50, EARTHQUAKE
	db 54, CRUNCH
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, STOMP
	db 1, SCARY_FACE
	db 1, ROCK_SLIDE
	db 1, HORN_DRILL
	db 46, TAKE_DOWN	
	db 50, ROCK_SLIDE
	db 54, EARTHQUAKE
	db 58, CRUNCH
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 5, GROWL
	db 9, TAIL_WHIP
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 23, MINIMIZE
	db 29, SING
	db 32, HEAL_BELL
	db 35, EGG_BOMB
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 5, SLEEP_POWDER
	db 9, ABSORB
	db 13, POISONPOWDER
	db 17, VINE_WHIP
	db 21, BIND
	db 25, MEGA_DRAIN
	db 29, STUN_SPORE
	db 33, GROWTH	
	db 37, LEECH_SEED
	db 41, GIGA_DRAIN	
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 7, LEER
	db 13, BITE
	db 19, TAIL_WHIP
	db 25, MEGA_PUNCH
	db 31, RAGE
	db 37, ENDURE
	db 43, DIZZY_PUNCH
	db 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 13, AURORA_BEAM
	db 18, BUBBLEBEAM
	db 23, LEER
	db 28, TWISTER
	db 33, AGILITY
	db 36, HYDRO_PUMP
	db 41, OUTRAGE
	db 46, HAZE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, SMOKESCREEN
	db 1, BUBBLEBEAM
	db 1, AURORA_BEAM
	db 1, DRAGON_RAGE
	db 35, AGILITY
	db 38, HYDRO_PUMP
	db 43, OUTRAGE
	db 48, HAZE
	db 0 ; no more level-up moves	

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 8, SUPERSONIC
	db 13, HORN_ATTACK
	db 18, WATERFALL
	db 23, FLAIL
	db 28, DRILL_PECK
	db 32, FURY_ATTACK
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUPERSONIC
	db 1, WATERFALL
	db 1, DRILL_PECK
	db 1, FURY_ATTACK
	db 37, SWORDS_DANCE
	db 42, GLARE
	db 49, HORN_DRILL
	db 57, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, HARDEN
	db 7, WATER_GUN
	db 13, CONFUSION
	db 19, RECOVER
	db 25, MINIMIZE
	db 31, PSYBEAM
	db 37, LIGHT_SCREEN
	db 43, HYDRO_PUMP
	db 99, TELEPORT
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, MINIMIZE
	db 1, CONFUSION
	db 1, WATER_GUN
	db 7, WATER_GUN
	db 13, CONFUSION
	db 19, RECOVER
	db 25, MINIMIZE
	db 31, PSYBEAM
	db 37, LIGHT_SCREEN
	db 43, HYDRO_PUMP
	db 99, TELEPORT
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 1, MIMIC
	db 6, CONFUSION
	db 11, SUBSTITUTE
	db 16, MEDITATE
	db 21, DOUBLESLAP
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, ENCORE
	db 36, PSYBEAM
	db 41, BATON_PASS
	db 46, SAFEGUARD
	db 51, RECOVER
	db 99, TELEPORT
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 21, DOUBLE_TEAM	
	db 24, AGILITY
	db 30, WING_ATTACK
	db 36, SLASH
	db 42, RAZOR_WIND
	db 48, SWORDS_DANCE
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 1, LOVELY_KISS
	db 1, POWDER_SNOW
	db 9, LOVELY_KISS
	db 13, POWDER_SNOW
	db 21, DOUBLESLAP
	db 25, ICE_PUNCH
	db 35, MEAN_LOOK
	db 41, BODY_SLAM
	db 51, PERISH_SONG
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERPUNCH
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 33, SCREECH
	db 36, CROSS_CHOP
	db 47, THUNDERBOLT
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 1, FIRE_PUNCH
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 33, SUNNY_DAY
	db 36, CROSS_CHOP	
	db 41, FLAMETHROWER
	db 49, CONFUSE_RAY
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 7, FOCUS_ENERGY
	db 13, BIND
	db 16, SEISMIC_TOSS
	db 21, HARDEN
	db 26, CLAMP
	db 31, SUBMISSION
	db 37, GUILLOTINE
	db 43, SWORDS_DANCE
	db 49, MIRROR_MOVE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, RAGE
	db 12, HORN_ATTACK
	db 15, SCARY_FACE
	db 19, PURSUIT
	db 23, REST
	db 27, THRASH
	db 30, TAKE_DOWN
	db 34, DOUBLE_EDGE
	db 37, BODY_SLAM
	db 41, SUBMISSION
	db 45, HORN_DRILL
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 10, WATER_GUN
	db 15, THRASH
	db 25, FLAIL
	db 35, REVERSAL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, THRASH
	db 1, BITE
	db 1, GUST
	db 20, BITE
	db 20, GUST
	db 25, DRAGON_RAGE
	db 28, LEER
	db 32, TWISTER
	db 36, HYDRO_PUMP
	db 40, CRUNCH
	db 44, HYPER_BEAM
	db 48, SKY_ATTACK
	db 52, OUTRAGE
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 10, MIST
	db 16, BODY_SLAM
	db 20, CONFUSE_RAY
	db 24, PERISH_SONG
	db 28, AURORA_BEAM
	db 32, RAIN_DANCE
	db 36, SAFEGUARD
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_EVENITE, UMBREON
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 8, SAND_ATTACK
	db 16, CHARM
	db 23, QUICK_ATTACK
	db 26, BITE
	db 30, GROWTH
	db 33, RAGE
	db 36, BATON_PASS
	db 40, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 1, CHARM
	db 8, SAND_ATTACK
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 26, BITE	
	db 30, GROWTH
	db 33, LICK
	db 36, AURORA_BEAM
	db 40, ACID_ARMOR
	db 43, HAZE
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 1, CHARM
	db 8, SAND_ATTACK
	db 16, THUNDERSHOCK
	db 23, QUICK_ATTACK
	db 26, DOUBLE_KICK	
	db 30, GROWTH
	db 33, DOUBLE_TEAM
	db 36, PIN_MISSILE
	db 40, THUNDER_WAVE
	db 43, AGILITY
	db 47, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 1, CHARM
	db 8, SAND_ATTACK
	db 16, EMBER
	db 23, QUICK_ATTACK
	db 26, BITE	
	db 30, GROWTH
	db 33, REFLECT
	db 36, FLAME_WHEEL
	db 40, LOW_KICK
	db 43, LEER
	db 47, FIRE_BLAST
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, SHARPEN
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, DOUBLE_EDGE
	db 99, TELEPORT
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 1, BIDE
	db 9, WATER_GUN
	db 14, ROCK_THROW
	db 19, BITE
	db 23, LEER
	db 27, PROTECT
	db 31, SPIKES
	db 36, ANCIENTPOWER
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, ANCIENTPOWER
	db 1, SPIKE_CANNON	
	db 1, SPIKES
	db 40, SPIKE_CANNON
	db 46, HYDRO_PUMP
	db 50, HORN_DRILL
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 1, ABSORB
	db 9, WATER_GUN	
	db 14, ROCK_THROW
	db 19, LEER
	db 23, SAND_ATTACK
	db 27, MEGA_DRAIN
	db 31, ENDURE
	db 36, ANCIENTPOWER
	db 42, SWORDS_DANCE
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLASH
	db 1, MEGA_DRAIN
	db 1, SAND_ATTACK
	db 1, ANCIENTPOWER
	db 40, SLASH
	db 46, SWORDS_DANCE
	db 50, RAZOR_WIND
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 8, AGILITY
	db 15, BITE
	db 22, SUPERSONIC
	db 26, WHIRLWIND
	db 29, ANCIENTPOWER
	db 36, SCARY_FACE
	db 43, TAKE_DOWN
	db 48, SKY_ATTACK
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 29, HEADBUTT
	db 36, SNORE
	db 36, REST
	db 43, BODY_SLAM
	db 50, ROLLOUT
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, WHIRLWIND
	db 13, MIST
	db 19, AGILITY
	db 31, FUTURE_SIGHT
	db 37, ICE_BEAM
	db 49, RAZOR_WIND
	db 55, REFLECT
	db 67, BLIZZARD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, WHIRLWIND	
	db 13, THUNDER_WAVE
	db 19, AGILITY
	db 31, DETECT
	db 37, THUNDERBOLT
	db 49, DRILL_PECK
	db 55, LIGHT_SCREEN
	db 67, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, WHIRLWIND		
	db 13, FIRE_SPIN
	db 19, AGILITY
	db 31, PURSUIT
	db 37, FLAMETHROWER
	db 49, SKY_ATTACK
	db 55, MORNING_SUN
	db 67, FIRE_BLAST
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 12, TWISTER
	db 16, DRAGON_RAGE
	db 20, SAFEGUARD
	db 24, AGILITY
	db 28, HAZE
	db 36, OUTRAGE
	db 42, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 1, DRAGON_RAGE
	db 1, AGILITY
	db 38, OUTRAGE
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, HAZE
	db 1, OUTRAGE
	db 1, HYPER_BEAM
	db 1, WING_ATTACK	
	db 55, WING_ATTACK
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SELFDESTRUCT
	db 1, DISABLE
	db 1, CONFUSION
	db 15, FUTURE_SIGHT
	db 20, MIST
	db 25, THUNDER_WAVE
	db 30, SAFEGUARD
	db 35, RECOVER
	db 40, PSYCHIC_M
	db 45, AMNESIA
	db 50, BARRIER
	db 99, TELEPORT	
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 1, METRONOME
	db 1, POUND
	db 10, SOFTBOILED
	db 20, MEGA_PUNCH
	db 30, PSYCHIC_M
	db 40, ROCK_SLIDE
	db 50, BODY_SLAM
	db 55, SWORDS_DANCE
	db 60, EXPLOSION
	db 99, TELEPORT
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 14, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, LEECH_SEED
	db 18, LIGHT_SCREEN	
	db 23, SAFEGUARD
	db 27, BODY_SLAM
	db 36, SYNTHESIS
	db 40, COUNTER
	db 44, SOLARBEAM	
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 16, LEECH_SEED
	db 19, LIGHT_SCREEN
	db 24, SAFEGUARD
	db 28, BODY_SLAM
	db 37, SYNTHESIS
	db 41, COUNTER
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, SAFEGUARD
	db 1, BODY_SLAM
	db 1, PETAL_DANCE
	db 32, PETAL_DANCE
	db 38, SYNTHESIS
	db 42, COUNTER
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 16, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 12, EMBER
	db 18, QUICK_ATTACK
	db 24, FLAME_WHEEL
	db 34, FLAMETHROWER
	db 45, FIRE_BLAST
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 34, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 1, EMBER
	db 20, QUICK_ATTACK
	db 26, FLAME_WHEEL
	db 38, FLAMETHROWER
	db 46, FIRE_BLAST
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOKESCREEN
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, FLAME_WHEEL
	db 39, FLAMETHROWER
	db 47, FIRE_BLAST
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 7, RAGE
	db 13, WATER_GUN
	db 20, BITE
	db 25, SCARY_FACE
	db 30, SCREECH
	db 35, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 36, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 1, WATER_GUN
	db 22, BITE
	db 28, SCARY_FACE
	db 37, SCREECH
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SCARY_FACE
	db 1, RAGE
	db 1, CRUNCH
	db 30, CRUNCH
	db 34, SLASH
	db 39, SCREECH
	db 44, ROCK_SLIDE
	db 48, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 8, PURSUIT
	db 11, QUICK_ATTACK
	db 17, FURY_SWIPES
	db 25, DIZZY_PUNCH
	db 33, REST
	db 41, AMNESIA
	db 46, BELLY_DRUM
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, PURSUIT
	db 1, QUICK_ATTACK
	db 18, FURY_SWIPES
	db 28, DIZZY_PUNCH
	db 38, REST
	db 48, AMNESIA
	db 53, BELLY_DRUM
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 1, PECK
	db 6, HYPNOSIS
	db 11, DREAM_EATER
	db 16, REFLECT
	db 19, FALSE_SWIPE
	db 23, MEAN_LOOK
	db 25, WING_ATTACK
	db 28, FAINT_ATTACK
	db 31, FUTURE_SIGHT
	db 36, GLARE
	db 40, MOONLIGHT
	db 99, TELEPORT
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, DREAM_EATER
	db 1, REFLECT
	db 1, FALSE_SWIPE
	db 25, MEAN_LOOK
	db 28, WING_ATTACK
	db 31, FAINT_ATTACK
	db 36, FUTURE_SIGHT
	db 40, GLARE
	db 44, MOONLIGHT
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, SWIFT
	db 8, SONICBOOM
	db 13, LIGHT_SCREEN
	db 13, REFLECT
	db 20, BATON_PASS
	db 25, AGILITY
	db 30, SAFEGUARD
	db 99, TELEPORT	
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SONICBOOM
	db 1, LIGHT_SCREEN
	db 1, REFLECT
	db 18, PSYBEAM
	db 23, BATON_PASS
	db 28, AGILITY
	db 33, SAFEGUARD
	db 99, TELEPORT	
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 18, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 6, SCARY_FACE
	db 11, SPIDER_WEB
	db 14, LEECH_LIFE
	db 17, NIGHT_SHADE
	db 20, GLARE
	db 25, FALSE_SWIPE
	db 29, ROCK_SLIDE
	db 33, BATON_PASS
	db 38, AGILITY
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SPIDER_WEB
	db 1, LEECH_LIFE
	db 1, NIGHT_SHADE
	db 23, GLARE
	db 27, FALSE_SWIPE
	db 33, ROCK_SLIDE
	db 38, BATON_PASS
	db 42, AGILITY
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, BITE
	db 1, CONFUSE_RAY
	db 1, WING_ATTACK
	db 26, SCREECH
	db 30, MEAN_LOOK
	db 35, HAZE
	db 40, RAZOR_WIND
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 10, SPARK
	db 15, HEAL_BELL
	db 20, WATER_GUN
	db 25, FLAIL
	db 30, CONFUSE_RAY
	db 35, TAKE_DOWN
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPARK
	db 1, HEAL_BELL
	db 1, WATER_GUN
	db 1, FLAIL
	db 35, CONFUSE_RAY
	db 45, TAKE_DOWN
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, SWEET_KISS
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 8, SING
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 1, METRONOME
	db 7, SWEET_KISS
	db 12, HEAL_BELL
	db 16, SOFTBOILED
	db 24, PSYBEAM
	db 28, ENCORE
	db 32, SAFEGUARD
	db 36, DOUBLE_EDGE
	db 99, TELEPORT
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 1, METRONOME
	db 7, SWEET_KISS
	db 12, HEAL_BELL
	db 16, SOFTBOILED
	db 24, PSYBEAM
	db 28, ENCORE
	db 32, SAFEGUARD
	db 36, DOUBLE_EDGE
	db 99, TELEPORT
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, LEER
	db 1, NIGHT_SHADE
	db 1, PECK
	db 7, CONFUSION
	db 12, FORESIGHT
	db 18, HAZE
	db 26, FUTURE_SIGHT
	db 30, MORNING_SUN
	db 34, DRILL_PECK
	db 38, CONFUSE_RAY
	db 42, PSYCHIC_M
	db 44, ANCIENTPOWER
	db 99, TELEPORT
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, CONFUSION
	db 1, FORESIGHT
	db 1, HAZE
	db 28, FUTURE_SIGHT
	db 34, MORNING_SUN
	db 38, DRILL_PECK
	db 43, CONFUSE_RAY
	db 46, PSYCHIC_M
	db 50, ANCIENTPOWER
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, THUNDERSHOCK
	db 12, COTTON_SPORE
	db 16, SPARK
	db 20, CONFUSE_RAY
	db 24, THUNDER_WAVE
	db 29, REFLECT
	db 29, LIGHT_SCREEN
	db 34, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, COTTON_SPORE
	db 19, SPARK
	db 23, CONFUSE_RAY
	db 27, THUNDER_WAVE
	db 32, REFLECT
	db 32, LIGHT_SCREEN
	db 36, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, COTTON_SPORE
	db 1, CONFUSE_RAY	
	db 1, THUNDER_WAVE
	db 1, THUNDERPUNCH	
	db 30, THUNDERPUNCH
	db 35, REFLECT
	db 35, LIGHT_SCREEN
	db 40, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 29, GIGA_DRAIN
	db 34, CHARM
	db 39, MOONLIGHT
	db 44, PETAL_DANCE	
	db 49, SOLARBEAM	
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, BUBBLE	
	db 1, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, QUICK_ATTACK
	db 15, BUBBLEBEAM
	db 21, ROLLOUT
	db 28, DOUBLE_EDGE
	db 36, RAIN_DANCE
	db 40, BELLY_DRUM
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, BUBBLEBEAM
	db 1, DEFENSE_CURL
	db 1, ROLLOUT
	db 25, ROLLOUT
	db 31, DOUBLE_EDGE
	db 39, RAIN_DANCE
	db 46, BELLY_DRUM
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, MIMIC
	db 10, FLAIL
	db 15, MACH_PUNCH
	db 19, LOW_KICK
	db 24, COUNTER
	db 28, ROCK_SLIDE
	db 33, SELFDESTRUCT	
	db 37, FAINT_ATTACK
	db 46, SLAM
	db 50, EXPLOSION
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, BUBBLEBEAM
	db 1, MIST
	db 1, PERISH_SONG
	db 28, PERISH_SONG	
	db 31, BODY_SLAM
	db 35, RAIN_DANCE
	db 38, HYDRO_PUMP
	db 42, TOXIC
	db 45, BELLY_DRUM
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, GUST
	db 1, SPLASH
	db 1, SYNTHESIS	
	db 5, TAIL_WHIP
	db 10, POISONPOWDER
	db 13, STUN_SPORE
	db 15, SLEEP_POWDER	
	db 17, ENCORE
	db 19, LEECH_SEED	
	db 22, RAZOR_WIND	
	db 25, MEGA_DRAIN
	db 28, TWISTER	
	db 31, REFLECT
	db 34, AMNESIA
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, GUST
	db 1, SYNTHESIS	
	db 1, SLEEP_POWDER	
	db 1, ENCORE
	db 20, LEECH_SEED
	db 23, RAZOR_WIND
	db 26, MEGA_DRAIN
	db 30, TWISTER
	db 33, REFLECT
	db 36, AMNESIA
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SLEEP_POWDER	
	db 1, LEECH_SEED
	db 1, RAZOR_WIND
	db 1, MEGA_DRAIN
	db 27, COTTON_SPORE	
	db 31, TWISTER
	db 34, REFLECT
	db 37, AMNESIA
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 1, SAND_ATTACK
	db 8, BATON_PASS
	db 12, DIZZY_PUNCH
	db 16, AGILITY
	db 20, ENCORE
	db 24, FURY_SWIPES
	db 28, MACH_PUNCH
	db 32, MIMIC
	db 36, PURSUIT
	db 38, SCREECH
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 10, MEGA_DRAIN
	db 19, SUNNY_DAY
	db 24, RAZOR_LEAF
	db 28, ENCORE
	db 31, SYNTHESIS
	db 34, SOLARBEAM
	db 38, GIGA_DRAIN
	db 43, FLAME_WHEEL
	db 49, PETAL_DANCE
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 10, MEGA_DRAIN
	db 19, SUNNY_DAY
	db 24, RAZOR_LEAF
	db 28, ENCORE
	db 31, SYNTHESIS
	db 36, SOLARBEAM
	db 38, GIGA_DRAIN	
	db 43, FLAME_WHEEL
	db 49, PETAL_DANCE
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, FORESIGHT
	db 1, DETECT
	db 1, QUICK_ATTACK
	db 13, WING_ATTACK
	db 19, SONICBOOM
	db 25, DOUBLE_TEAM
	db 29, LEECH_LIFE
	db 33, SUPERSONIC
	db 36, TWISTER
	db 40, SCREECH
	db 44, ANCIENTPOWER
	db 99, TELEPORT	
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 11, SLAM
	db 16, ENCORE
	db 21, AMNESIA
	db 26, RECOVER
	db 31, EARTHQUAKE
	db 36, SLUDGE
	db 41, HAZE
	db 46, ANCIENTPOWER
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SLAM
	db 1, ENCORE
	db 1, RECOVER	
	db 23, AMNESIA
	db 28, RECOVER
	db 33, EARTHQUAKE
	db 38, SLUDGE
	db 43, HAZE
	db 48, ANCIENTPOWER
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 1, CHARM
	db 8, SAND_ATTACK
	db 16, CONFUSION
	db 23, QUICK_ATTACK
	db 26, PSYBEAM
	db 30, GROWTH
	db 33, FLAME_WHEEL
	db 36, SWIFT
	db 40, PSYCHIC_M
	db 43, PSYCH_UP
	db 47, MORNING_SUN
	db 99, TELEPORT
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 1, CHARM
	db 8, SAND_ATTACK
	db 16, PURSUIT	
	db 23, QUICK_ATTACK
	db 26, FAINT_ATTACK	
	db 30, GROWTH
	db 33, TOXIC
	db 36, CONFUSE_RAY
	db 40, MEAN_LOOK
	db 43, SCREECH
	db 47, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, FALSE_SWIPE
	db 11, PURSUIT
	db 16, HAZE
	db 20, WING_ATTACK
	db 26, NIGHT_SHADE
	db 31, FAINT_ATTACK
	db 36, DRILL_PECK
	db 41, MEAN_LOOK
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 39, FUTURE_SIGHT
	db 43, PSYCHIC_M
	db 99, TELEPORT	
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYWAVE
	db 6, SPITE
	db 9, NIGHT_SHADE
	db 12, CONFUSE_RAY
	db 16, ENCORE	
	db 19, MEAN_LOOK
	db 24, FAINT_ATTACK
	db 27, PSYBEAM
	db 32, DESTINY_BOND
	db 36, PAIN_SPLIT
	db 40, FLAME_WHEEL
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 5, ANCIENTPOWER	
	db 10, MEAN_LOOK
	db 15, GLARE
	db 20, RECOVER	
	db 25, FUTURE_SIGHT
	db 99, TELEPORT
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 7, CONFUSION
	db 13, STOMP
	db 18, AGILITY
	db 22, TAKE_DOWN
	db 27, PSYBEAM
	db 31, DOUBLE_KICK
	db 35, BATON_PASS
	db 41, CRUNCH
	db 46, FUTURE_SIGHT
	db 99, TELEPORT
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, PROTECT
	db 1, PIN_MISSILE
	db 8, SELFDESTRUCT
	db 14, TAKE_DOWN
	db 21, SPIKES
	db 25, BIDE
	db 29, REFLECT
	db 34, EXPLOSION
	db 37, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, SELFDESTRUCT
	db 1, SPIKES
	db 1, SPIKE_CANNON
	db 1, MIRROR_COAT
	db 31, SPIKE_CANNON
	db 35, MIRROR_COAT
	db 39, REFLECT
	db 44, EXPLOSION
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 5, DEFENSE_CURL
	db 13, GLARE
	db 16, HORN_ATTACK
	db 20, SPITE
	db 26, PURSUIT
	db 30, ANCIENTPOWER
	db 33, SCREECH
	db 38, TAKE_DOWN
	db 43, DRILL_PECK
	db 47, OUTRAGE
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SAND_ATTACK
	db 1, HARDEN
	db 6, QUICK_ATTACK
	db 13, RAZOR_WIND
	db 20, SLASH
	db 24, FALSE_SWIPE
	db 28, FAINT_ATTACK
	db 32, METAL_CLAW
	db 36, SCREECH
	db 38, EARTHQUAKE
	db 40, COUNTER
	db 46, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 9, BIND
	db 14, ROCK_THROW
	db 18, HARDEN
	db 23, RAGE
	db 27, SANDSTORM
	db 32, IRON_TAIL
	db 36, CRUNCH
	db 40, EARTHQUAKE
	db 45, EXPLOSION
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 24, HEAL_BELL
	db 26, ROAR
	db 34, RAGE
	db 38, CRUNCH
	db 43, TAKE_DOWN
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, BITE
	db 1, LICK
	db 1, HYPER_FANG
	db 23, HYPER_FANG
	db 25, HEAL_BELL
	db 28, ROAR
	db 38, RAGE
	db 43, CRUNCH
	db 51, TAKE_DOWN
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, POISON_STING
	db 1, WATER_GUN	
	db 1, SPIKES
	db 10, HARDEN
	db 10, MINIMIZE
	db 16, PIN_MISSILE
	db 20, ACID
	db 24, BITE
	db 28, TAKE_DOWN
	db 32, HYDRO_PUMP
	db 36, CRUNCH
	db 40, PAIN_SPLIT
	db 44, SPIKE_CANNON
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 21, DOUBLE_TEAM	
	db 24, AGILITY
	db 30, METAL_CLAW
	db 36, SLASH
	db 42, LIGHT_SCREEN	
	db 48, SWORDS_DANCE
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 1, STRING_SHOT
	db 9, WRAP
	db 12, ROCK_THROW
	db 14, ENCORE
	db 18, BUBBLEBEAM
	db 22, SAFEGUARD
	db 25, BIDE
	db 29, ROCK_SLIDE
	db 34, SPIKES
	db 37, REST
	db 40, TOXIC
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, HORN_ATTACK
	db 12, ENDURE
	db 16, COUNTER
	db 23, FURY_ATTACK
	db 29, SUBMISSION
	db 34, REVERSAL	
	db 39, MEGAHORN
	db 44, ROCK_SLIDE
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SCREECH
	db 9, POWDER_SNOW
	db 13, QUICK_ATTACK
	db 17, FAINT_ATTACK
	db 21, FALSE_SWIPE
	db 26, METAL_CLAW
	db 31, SHARPEN
	db 35, SLASH
	db 38, REFLECT
	db 41, AGILITY
	db 46, BEAT_UP
	db 50, SUBSTITUTE
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 7, LICK
	db 15, FURY_SWIPES
	db 17, METAL_CLAW
	db 22, FAINT_ATTACK
	db 27, REST
	db 32, SLASH
	db 36, SNORE
	db 39, THRASH
	db 44, ANCIENTPOWER
	db 48, FORESIGHT
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 0 ; no more evolutions
	db 1, FURY_SWIPES
	db 1, METAL_CLAW
	db 1, REST
	db 1, SUBMISSION
	db 35, SLASH
	db 39, SNORE
	db 42, THRASH
	db 47, ANCIENTPOWER
	db 51, FORESIGHT
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 27, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, HARDEN
	db 8, EMBER
	db 15, ROCK_THROW
	db 19, POISON_GAS
	db 25, FLAMETHROWER	
	db 29, AMNESIA
	db 29, ACID_ARMOR
	db 36, FIRE_BLAST
	db 40, ROCK_SLIDE
	db 44, BODY_SLAM
	db 48, RECOVER
	db 53, EXPLOSION
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, HARDEN	
	db 1, ROCK_THROW
	db 1, POISON_GAS	
	db 1, FLAMETHROWER
	db 31, AMNESIA
	db 31, ACID_ARMOR
	db 39, FIRE_BLAST
	db 43, ROCK_SLIDE
	db 47, BODY_SLAM
	db 51, RECOVER
	db 57, EXPLOSION
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 10, POWDER_SNOW
	db 19, BONE_RUSH
	db 25, ENDURE
	db 28, TAKE_DOWN
	db 35, BLIZZARD
	db 42, MIST	
	db 49, ANCIENTPOWER
	db 52, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, BONE_RUSH
	db 1, ENDURE
	db 1, TAKE_DOWN
	db 33, FURY_ATTACK
	db 38, BLIZZARD	
	db 45, MIST
	db 52, ANCIENTPOWER
	db 55, AMNESIA
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, HAZE
	db 7, BUBBLE
	db 13, SAFEGUARD	
	db 19, BUBBLEBEAM
	db 25, RECOVER
	db 28, SPIKES
	db 31, SPIKE_CANNON
	db 34, PIN_MISSILE
	db 37, CURSE		
	db 40, MIRROR_COAT
	db 43, ANCIENTPOWER
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, LOCK_ON
	db 18, PSYBEAM
	db 18, AURORA_BEAM
	db 18, BUBBLEBEAM
	db 28, ICE_BEAM
	db 34, FOCUS_ENERGY
	db 40, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, PSYBEAM
	db 1, AURORA_BEAM
	db 1, OCTAZOOKA
	db 25, OCTAZOOKA
	db 30, SLUDGE_BOMB
	db 35, ICE_BEAM
	db 40, FOCUS_ENERGY
	db 45, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 1, POWDER_SNOW
	db 1, GUST
	db 25, DRILL_PECK
	db 30, SPIKES
	db 35, ICE_BEAM
	db 40, FUTURE_SIGHT
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, WING_ATTACK	
	db 8, SUPERSONIC
	db 13, BUBBLEBEAM
	db 18, CONFUSE_RAY
	db 23, TWISTER
	db 28, AGILITY
	db 33, RECOVER
	db 38, HYDRO_PUMP	
	db 43, HAZE
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 7, SAND_ATTACK
	db 13, SWIFT
	db 18, WING_ATTACK
	db 23, AGILITY
	db 25, FURY_ATTACK
	db 28, WHIRLWIND
	db 31, STEEL_WING
	db 38, DRILL_PECK
	db 43, SHARPEN
	db 49, SPIKES
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 17, BITE
	db 21, BONEMERANG	
	db 27, FLAMETHROWER
	db 31, COUNTER
	db 35, PURSUIT
	db 39, FIRE_BLAST
	db 43, CRUNCH
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER	
	db 1, SMOG
	db 1, BONEMERANG
	db 1, FAINT_ATTACK
	db 24, FAINT_ATTACK
	db 30, FLAMETHROWER
	db 35, COUNTER
	db 39, PURSUIT
	db 43, FIRE_BLAST
	db 47, CRUNCH
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOKESCREEN
	db 1, BUBBLEBEAM
	db 1, AURORA_BEAM
	db 1, DRAGON_RAGE
	db 35, AGILITY
	db 38, HYDRO_PUMP
	db 43, OUTRAGE
	db 48, HAZE
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, RAPID_SPIN
	db 6, DEFENSE_CURL
	db 12, MAGNITUDE
	db 16, FLAIL
	db 22, ROLLOUT
	db 28, TAKE_DOWN
	db 32, EARTHQUAKE
	db 36, DOUBLE_EDGE
	db 40, ANCIENTPOWER
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAPID_SPIN
	db 1, DEFENSE_CURL
	db 1, MAGNITUDE
	db 1, ROLLOUT
	db 25, HORN_ATTACK
	db 30, TAKE_DOWN
	db 36, EARTHQUAKE
	db 40, DOUBLE_EDGE
	db 44, ANCIENTPOWER
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, DEFENSE_CURL
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, DOUBLE_EDGE
	db 99, TELEPORT	
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, LEER
	db 12, HYPNOSIS
	db 16, STOMP
	db 20, BITE
	db 23, SAND_ATTACK
	db 26, SHARPEN
	db 32, REFLECT
	db 32, LIGHT_SCREEN
	db 36, TAKE_DOWN
	db 40, CONFUSE_RAY
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROLLING_KICK
	db 7, FOCUS_ENERGY
	db 11, PURSUIT
	db 15, QUICK_ATTACK
	db 18, RAPID_SPIN
	db 23, MACH_PUNCH
	db 27, COUNTER
	db 31, AGILITY
	db 35, DETECT
	db 37, TWISTER
	db 39, TRIPLE_KICK
	db 43, HORN_DRILL
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 9, SWEET_KISS
	db 13, POWDER_SNOW
	db 21, CONFUSION
	db 25, SING
	db 33, MEAN_LOOK
	db 37, PSYCHIC_M
	db 45, PERISH_SONG
	db 49, BLIZZARD
	db 99, TELEPORT	
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 33, SCREECH
	db 36, CROSS_CHOP	
	db 41, THUNDERBOLT
	db 49, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, SUNNY_DAY
	db 36, CROSS_CHOP	
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, DEFENSE_CURL
	db 13, STOMP
	db 19, MILK_DRINK
	db 26, BIDE
	db 34, ROLLOUT
	db 43, BODY_SLAM
	db 49, HEAL_BELL
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 4, GROWL
	db 7, TAIL_WHIP
	db 10, SOFTBOILED
	db 13, DOUBLESLAP
	db 18, MINIMIZE
	db 23, SING
	db 26, HEAL_BELL
	db 28, EGG_BOMB
	db 33, DEFENSE_CURL
	db 40, LIGHT_SCREEN
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, QUICK_ATTACK
	db 1, SPARK
	db 1, REFLECT
	db 41, ROAR
	db 46, EXTREMESPEED
	db 51, THUNDERBOLT
	db 56, CRUNCH
	db 61, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, STOMP
	db 1, FIRE_SPIN
	db 1, ANCIENTPOWER
	db 41, ROAR
	db 46, EXTREMESPEED
	db 51, FLAMETHROWER
	db 56, CRUNCH
	db 61, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, MIST
	db 1, BUBBLEBEAM
	db 1, AURORA_BEAM
	db 41, ROAR
	db 46, MIRROR_COAT
	db 51, ICE_BEAM
	db 56, CRUNCH
	db 61, HYDRO_PUMP
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 36, SCARY_FACE
	db 43, CRUNCH
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
	db 1, SANDSTORM
	db 1, SCREECH
	db 1, ROCK_SLIDE
	db 1, THRASH
	db 38, SCARY_FACE
	db 47, CRUNCH
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_SLIDE
	db 1, THRASH
	db 1, SCARY_FACE
	db 1, CRUNCH
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, SAFEGUARD
	db 1, GUST
	db 1, FUTURE_SIGHT
	db 1, AEROBLAST	
	db 44, ANCIENTPOWER
	db 55, RECOVER
	db 66, HYDRO_PUMP
	db 77, WHIRLWIND
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SAFEGUARD
	db 1, GUST
	db 1, FUTURE_SIGHT
	db 1, SACRED_FIRE	
	db 44, ANCIENTPOWER
	db 55, RECOVER
	db 66, FIRE_BLAST
	db 77, WHIRLWIND
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, FUTURE_SIGHT
	db 1, CONFUSION
	db 1, SAFEGUARD
	db 1, HEAL_BELL
	db 10, RECOVER
	db 20, ANCIENTPOWER
	db 30, LEECH_SEED
	db 40, BATON_PASS
	db 50, PERISH_SONG
	db 0 ; no more level-up moves
	