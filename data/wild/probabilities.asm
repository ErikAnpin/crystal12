MACRO mon_prob
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable:
	table_width 2
	mon_prob 20,  0 ; 20% chance
	mon_prob 40,  1 ; 20% chance
	mon_prob 60,  2 ; 20% chance
	mon_prob 80,  3 ; 10% chance
	mon_prob 90,  4 ; 10% chance
	mon_prob 95,  5 ;  5% chance
	mon_prob 100, 6 ;  5% chance
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 2
	mon_prob 40,  0 ; 40% chance
	mon_prob 80,  1 ; 40% chance
	mon_prob 100, 2 ; 20% chance
	assert_table_length NUM_WATERMON
