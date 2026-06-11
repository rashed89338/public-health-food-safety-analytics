#******************************Restaurant_Vendor_appended_Dofile****************************************************
#**************************************************************************************************************************
#Data analysis for calculating proportion difference
tab q2_4m time, col
bys time: tab q2_4m [aweight = pw]
firthlogit q2_4m time

tab q2_4s time, col
bys time: tab q2_4s [aweight = pw]
xtgee q2_4s i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab q2_4c time, col
bys time: tab q2_4c [aweight = pw]
xtgee q2_4c i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab q2_2m time, col
bys time: tab q2_2m [aweight = pw]
firthlogit q2_2m i.time

tab shallow_tube_drink time, col
bys time: tab shallow_tube_drink [aweight = pw]
xtgee shallow_tube_drink i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab deep_tube_drink time, col
bys time: tab deep_tube_drink [aweight = pw]
xtgee deep_tube_drink i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab inside_pump_drink time, col
bys time: tab inside_pump_drink [aweight = pw]
xtgee inside_pump_drink i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)


tab outside_pump_drink time, col
bys time: tab outside_pump_drink [aweight = pw]
xtgee outside_pump_drink i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)



tab filter_drink time, col
bys time: tab filter_drink [aweight = pw]
xtgee filter_drink i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab tara_pump_drink time, col
bys time: tab tara_pump_drink [aweight = pw]
xtgee tara_pump_drink i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab tara_pump_utclean time, col
bys time: tab tara_pump_utclean [aweight = pw]
firthlogit tara_pump_utclean i.time

tab shallow_tube_utclean time, col
bys time: tab shallow_tube_utclean [aweight = pw]
xtgee shallow_tube_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab deep_tube_utclean time, col
bys time: tab deep_tube_utclean [aweight = pw]
xtgee deep_tube_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab inside_pump_utclean time, col
bys time: tab inside_pump_utclean [aweight = pw]
xtgee inside_pump_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab outside_pump_utclean time, col
bys time: tab outside_pump_utclean [aweight = pw]
xtgee outside_pump_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab direct_channel_utclean time, col
bys time: tab direct_channel_utclean [aweight = pw]
xtgee direct_channel_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab q10_10_4 time, col
bys time: tab q10_10_4 [aweight = pw]
xtgee q10_10_4 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab q10_10_5 time, col
bys time: tab q10_10_5 [aweight = pw]
xtgee q10_10_5 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab q10_10_6 time, col
bys time: tab q10_10_6 [aweight = pw]
xtgee q10_10_6 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab q10_10_7 time, col
bys time: tab q10_10_7 [aweight = pw]
xtgee q10_10_7 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab q10_10_8 time, col
bys time: tab q10_10_8 [aweight = pw]
xtgee q10_10_8 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab q10_10_9 time, col
bys time: tab q10_10_9 [aweight = pw]
xtgee q10_10_9 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab improved_toi time, col
bys time: tab improved_toi [aweight = pw]
xtgee improved_toi i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab unimproved_toi time, col
bys time: tab unimproved_toi [aweight = pw]
xtgee unimproved_toi i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab q5_1m time, col
bys time: tab q5_1m [aweight = pw]
xtgee q5_1m i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab watavailable time, col
bys time: tab watavailable [aweight = pw]
xtgee watavailable i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab watersoap time, col
bys time: tab watersoap [aweight = pw]
xtgee watersoap i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab hand_clean_ss time, col
bys time: tab hand_clean_ss [aweight = pw]
xtgee hand_clean_ss i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab hand_clean_cook time, col
bys time: tab hand_clean_cook [aweight = pw]
xtgee hand_clean_cook i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab wash_bh_s time, col
bys time: tab wash_bh_s [aweight = pw]
xtgee wash_bh_s i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab wash_bh_c time, col
bys time: tab wash_bh_c [aweight = pw]
xtgee wash_bh_c i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_rice time, col
bys time: tab sale_rice [aweight = pw]
xtgee sale_rice i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_bread time, col
bys time: tab sale_bread [aweight = pw]
xtgee sale_bread i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_fish time, col
bys time: tab sale_fish [aweight = pw]
xtgee sale_fish i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_meategg time, col
bys time: tab sale_meategg [aweight = pw]
xtgee sale_meategg i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_lenti time, col
bys time: tab sale_lenti [aweight = pw]
xtgee sale_lenti i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_vegetables time, col
bys time: tab sale_vegetables [aweight = pw]
xtgee sale_vegetables i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_sweets time, col
bys time: tab sale_sweets [aweight = pw]
xtgee sale_sweets i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_fried time, col
bys time: tab sale_fried [aweight = pw]
xtgee sale_fried i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_mashed time, col
bys time: tab sale_mashed [aweight = pw]
xtgee sale_mashed i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_juice time, col
bys time: tab sale_juice [aweight = pw]
xtgee sale_juice i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_rice time, col
bys time: tab save_rice [aweight = pw]
xtgee save_rice i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_bread time, col
bys time: tab save_bread [aweight = pw]
firthlogit save_bread i.time

tab save_fish time, col
bys time: tab save_fish [aweight = pw]
xtgee save_fish i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_meategg time, col
bys time: tab save_meategg [aweight = pw]
xtgee save_meategg i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_dal time, col
bys time: tab save_dal [aweight = pw]
xtgee save_dal i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_veg time, col
bys time: tab save_veg [aweight = pw]
xtgee save_veg i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_salad time, col
bys time: tab save_salad [aweight = pw]
firthlogit save_salad i.time

tab save_fried time, col
bys time: tab save_fried [aweight = pw]
firthlogit save_fried i.time

tab save_mashed time, col
bys time: tab save_mashed [aweight = pw]
xtgee save_mashed i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_wholefruit time, col
bys time: tab save_wholefruit [aweight = pw]
xtgee save_wholefruit i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_pickles time, col
bys time: tab save_pickles [aweight = pw]
firthlogit save_pickles i.time

tab save_sweets time, col
bys time: tab save_sweets [aweight = pw]
xtgee save_sweets i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_biscuit time, col
bys time: tab save_biscuit [aweight = pw]
firthlogit save_biscuit time

tab save_fuchka time, col
bys time: tab save_fuchka [aweight = pw]
firthlogit save_fuchka i.time


tab save_ricecake time, col
bys time: tab save_ricecake [aweight = pw]
firthlogit save_ricecake i.time

tab save_chanachur time, col
bys time: tab save_chanachur [aweight = pw]
xtgee save_chanachur i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab pit time, col
bys time: tab pit [aweight = pw]
xtgee pit i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab river time, col
bys time: tab river [aweight = pw]
xtgee river i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab Roadside time, col
bys time: tab Roadside [aweight = pw]
xtgee Roadside i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)





#****************************Multiple regression(GEE) ***************************************************************************************
#******************************************************************************************************************
xtgee shallow_tube_drink i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee deep_tube_drink i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee inside_pump_drink i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee outside_pump_drink i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee filter_drink i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee tara_pump_drink i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

firthlogit tara_pump_utclean i.time q2_4m q2_2m

xtgee shallow_tube_utclean i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee deep_tube_utclean i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee inside_pump_utclean i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee outside_pump_utclean i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee direct_channel_utclean i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee q10_10_4 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee q10_10_5 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee q10_10_6 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee q10_10_7 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee q10_10_8 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee q10_10_9 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee improved_toi i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee unimproved_toi i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee q5_1m i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee watavailable i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee watersoap i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hand_clean_ss i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hand_clean_cook i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee wash_bh_s i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee wash_bh_c i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_rice i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_bread i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_fish i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_meategg i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_lenti i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_vegetables i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_sweets i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_fried i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_mashed i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_juice i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee save_rice i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

firthlogit save_bread i.time q2_4m q2_2m

xtgee save_fish i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee save_meategg i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee save_dal i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee save_veg i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

firthlogit save_salad i.time q2_4m q2_2m

firthlogit save_fried i.time q2_4m q2_2m

xtgee save_mashed i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee save_wholefruit i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

firthlogit save_pickles i.time q2_4m q2_2m

xtgee save_sweets i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

firthlogit save_biscuit i.time q2_4m q2_2m

firthlogit save_fuchka i.time q2_4m q2_2m

firthlogit save_ricecake i.time q2_4m q2_2m

xtgee save_chanachur i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee pit i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee river i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee Roadside i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)



#*****************************************SO*********************************************
#*********************************************************************************************************
xtgee Food_prep_cook i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee Food_prep i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_21n22 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_23n24 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_25 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_50n52 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_51n54 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_58 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_55n56 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_53 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_44n45 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_41n42 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_26n27n31 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_ss_26n27n31 i.time

xtgee hwws_cook_21n22 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_23n24 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_25 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_50n52 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_51n54 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_58 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_cook_58 i.time

xtgee hwws_cook_55n56 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_53 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_44n45 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_cook_44n45 i.time

xtgee hwws_cook_41n42 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_26n27n31 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_58 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_55n56 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_44n45 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_cust_44n45 i.time

xtgee hwws_cust_10n11 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_26n27n31 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_57 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_60 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)



#******************************************MLR_Education_AGE_Confounding*************************
#***********************************************************************************************
xtgee Food_prep_cook i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee Food_prep i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_21n22 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)


xtgee hwws_ss_25 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_50n52 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_51n54 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_58 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_55n56 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_53 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_44n45 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_41n42 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_ss_26n27n31 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_ss_26n27n31 i.time

xtgee hwws_cook_21n22 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_23n2 time [pweight = pw], family(binomial) link(logit) i(psu_no) corr (independent) vce(jacknife, mse)
jacknife _b[time] _b[_cons], eclass cluster(psu_no) mse: firthlogit  hwws_cook_23n24 time


xtgee hwws_cook_25 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_50n52 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_51n54 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_58 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_cook_58 i.time

xtgee hwws_cook_55n56 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_53 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_44n45 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_cook_44n45 i.time

xtgee hwws_cook_41n42 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cook_26n27n31 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_58 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_55n56 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_44n45 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_cust_44n45 i.time

xtgee hwws_cust_10n11 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_26n27n31 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_57 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_60 i.time q2_4m q2_2m [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

#after cleaning cough/sneeze
hwws_ss_26n27n31 
hwws_cook_58 
hwws_cook_44n45
hwws_cust_44n45

xtgee hwws_ss_26n27n31 time [pweight = pw], family(binomial) link(logit) i(psu_no) corr (independent) vce(jacknife, mse)
jacknife _b[time] _b[_cons], eclass cluster(psu_no) mse: firthlogit  hwws_ss_26n27n31 time

xtgee hwws_cook_58 time [pweight = pw], family(binomial) link(logit) i(psu_no) corr (independent) vce(jacknife, mse)
jacknife _b[time] _b[_cons], eclass cluster(psu_no) mse: firthlogit  hwws_cook_58 time

xtgee hwws_cook_44n45 time [pweight = pw], family(binomial) link(logit) i(psu_no) corr (independent) vce(jacknife, mse)
jacknife _b[time] _b[_cons], eclass cluster(psu_no) mse: firthlogit  hwws_cook_44n45 time

xtgee hwws_cust_44n45 time [pweight = pw], family(binomial) link(logit) i(psu_no) corr (independent) vce(jacknife, mse)
jacknife _b[time] _b[_cons], eclass cluster(psu_no) mse: firthlogit  hwws_cust_44n45 time







#***********************************for_food_vendors***********************
#******************************************************************************************
sale_ricecake
sale_mashed
save_mashed 
save_curry

tab Shallow_drink time, col
bys time: tab Shallow_drink [aweight = pw]
xtgee Shallow_drink time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab Deep_tube_drink time, col
bys time: tab Deep_tube_drink [aweight = pw]
xtgee Deep_tube_drink i.time  [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab tap_inside_drink time, col
bys time: tab tap_inside_drink [aweight = pw]
xtgee tap_inside_drink i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab tap_outside_drink time, col
bys time: tab tap_outside_drink [aweight = pw]
xtgee tap_outside_drink i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab filter_drink time, col
bys time: tab filter_drink [aweight = pw]
xtgee filter_drink i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab no_water_drink time, col
bys time: tab no_water_drink [aweight = pw]
xtgee no_water_drink i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab Shallow_tube_utclean time, col
bys time: tab Shallow_tube_utclean [aweight = pw]
xtgee Shallow_tube_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab Deep_tube_utclean time, col
bys time: tab Deep_tube_utclean [aweight = pw]
xtgee Deep_tube_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab tap_inside_utclean time, col
bys time: tab tap_inside_utclean [aweight = pw]
xtgee tap_inside_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab tap_outside_utclean time, col
bys time: tab tap_outside_utclean [aweight = pw]
xtgee tap_outside_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab filter_utclean time, col
bys time: tab filter_utclean [aweight = pw]
xtgee filter_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab no_water_utclean time, col
bys time: tab no_water_utclean [aweight = pw]
xtgee no_water_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab direct_channel_utclean time, col
bys time: tab direct_channel_utclean [aweight = pw]
xtgee direct_channel_utclean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab p9_6_1 time, col
bys time: tab p9_6_1 [aweight = pw]
xtgee p9_6_1 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab p9_6_2 time, col
bys time: tab p9_6_2 [aweight = pw]
xtgee p9_6_2 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab p9_6_3 time, col
bys time: tab p9_6_3 [aweight = pw]
xtgee p9_6_3 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab p9_6_4 time, col
bys time: tab p9_6_4 [aweight = pw]
xtgee p9_6_4 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab p9_6_5 time, col
bys time: tab p9_6_5 [aweight = pw]
xtgee p9_6_5 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab p9_6_6 time, col
bys time: tab p9_6_6 [aweight = pw]
xtgee p9_6_6 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab p9_6_7 time, col
bys time: tab p9_6_7 [aweight = pw]
xtgee p9_6_7 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab p9_6_8 time, col
bys time: tab p9_6_8 [aweight = pw]
xtgee p9_6_8 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab p9_6_9 time, col
bys time: tab p9_6_9 [aweight = pw]
xtgee p9_6_9 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab p9_6_10 time, col
bys time: tab p9_6_10 [aweight = pw]
xtgee p9_6_10 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab near_market time, col
bys time: tab near_market [aweight = pw]
xtgee near_market i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab near_house time, col
bys time: tab near_house [aweight = pw]
xtgee near_house i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab near_school time, col
bys time: tab near_school [aweight = pw]
xtgee near_school i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab no_facility time, col
bys time: tab no_facility [aweight = pw]
xtgee no_facility i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab not_applicable time, col
bys time: tab not_applicable [aweight = pw]
xtgee not_applicable i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)


tab wash_both_hand time, col
bys time: tab wash_both_hand [aweight = pw]
xtgee wash_both_hand i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab hand_clean time, col
bys time: tab hand_clean [aweight = pw]
xtgee hand_clean i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_tea time, col
bys time: tab sale_tea [aweight = pw]
xtgee sale_tea i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_fuchka time, col
bys time: tab sale_fuchka [aweight = pw]
xtgee sale_fuchka i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_fried time, col
bys time: tab sale_fried [aweight = pw]
xtgee sale_fried i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_juice time, col
bys time: tab sale_juice [aweight = pw]
xtgee sale_juice i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_cutfruit time, col
bys time: tab sale_cutfruit [aweight = pw]
xtgee sale_cutfruit i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_pickle time, col
bys time: tab sale_pickle [aweight = pw]
xtgee sale_pickle i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_bread time, col
bys time: tab sale_bread [aweight = pw]
firthlogit sale_bread i.time

tab sale_rice time, col
bys time: tab sale_rice [aweight = pw]
xtgee sale_rice i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_curry time, col
bys time: tab sale_curry [aweight = pw]
xtgee sale_curry i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_mashed time, col
bys time: tab sale_mashed [aweight = pw]
xtgee sale_mashed i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_ricecake time, col
bys time: tab sale_ricecake [aweight = pw]
firthlogit sale_ricecake time

tab sale_chanachur time, col
bys time: tab sale_chanachur [aweight = pw]
xtgee sale_chanachur i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab sale_sweets time, col
bys time: tab sale_sweets [aweight = pw]
firthlogit sale_sweets time

tab save_tea time, col
bys time: tab save_tea [aweight = pw]
xtgee save_tea i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_fuchka time, col
bys time: tab save_fuchka [aweight = pw]
firthlogit sale_sweets time

tab save_fried time, col
bys time: tab save_fried [aweight = pw]
xtgee save_fried i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_juice time, col
bys time: tab save_juice [aweight = pw]
firthlogit save_juice time

tab save_pickle time, col
bys time: tab save_pickle [aweight = pw]
firthlogit save_pickle time

tab save_fruit time, col
bys time: tab save_fruit [aweight = pw]
firthlogit save_fruit time

tab save_curry time, col
bys time: tab save_curry [aweight = pw]
firthlogit save_fruit time

tab save_cutfruit time, col
bys time: tab save_cutfruit [aweight = pw]
firthlogit save_cutfruit time

tab save_bread time, col
bys time: tab save_bread [aweight = pw]
firthlogit save_bread time

tab save_mashed time, col
bys time: tab save_mashed [aweight = pw]
xtgee save_mashed i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_ricecake time, col
bys time: tab save_ricecake [aweight = pw]
xtgee save_ricecake i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_chanachur time, col
bys time: tab save_chanachur [aweight = pw]
xtgee save_chanachur i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

tab save_sweets time, col
bys time: tab save_sweets [aweight = pw]
firthlogit  save_sweets time

#********************************Vendor-Multiple-Regression-taking-Confounding-education-and-age************************************
#****************************************************************************************************

xtgee Shallow_drink i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee Deep_tube_drink i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee tap_inside_drink i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee tap_outside_drink i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee filter_drink i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee no_water_drink i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee Shallow_tube_utclean i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee Deep_tube_utclean i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee tap_inside_utclean i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee tap_outside_utclean i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee filter_utclean i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee no_water_utclean i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

firthlogit direct_channel_utclean i.time q2_2 q2_4

xtgee p9_6_1 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee p9_6_2 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)


firthlogit p9_6_3 i.time q2_2 q2_4

xtgee p9_6_4 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee p9_6_5 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee p9_6_6 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee p9_6_7 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee p9_6_8 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee p9_6_9 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee p9_6_10 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee near_market i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee near_house i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee near_school i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee no_facility i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee not_applicable i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee wash_both_hand i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hand_clean i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_tea i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_fuchka i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_fried i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_juice i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)


firthlogit sale_cutfruit i.time q2_2 q2_4

xtgee sale_pickle i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

firthlogit sale_bread i.time q2_2 q2_4



firthlogit sale_rice i.time q2_2 q2_4

xtgee sale_curry i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee sale_mashed i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

firthlogit sale_ricecake i.time q2_2 q2_4

xtgee sale_chanachur i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

firthlogit sale_sweets i.time q2_2 q2_4


firthlogit save_tea i.time q2_2 q2_4

firthlogit save_fuchka i.time q2_2 q2_4


firthlogit save_fried i.time q2_2 q2_4

firthlogit save_juice i.time q2_2 q2_4

firthlogit save_pickle i.time q2_2 q2_4

firthlogit save_fruit i.time q2_2 q2_4

firthlogit save_curry i.time q2_2 q2_4

firthlogit save_cutfruit i.time q2_2 q2_4

firthlogit save_bread i.time q2_2 q2_4



firthlogit save_mashed i.time q2_2 q2_4

firthlogit save_ricecake i.time q2_2 q2_4

xtgee save_chanachur i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

firthlogit save_sweets i.time q2_2 q2_4





#****************************Vendor-SO***********************************************************************
#***********************************************************************************************************
xtgee hwws_fv_21n22 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_23n24 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_25 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_50n52 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_51n54 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_58 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_55n56 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_53 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_44n45 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_41n42 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_26n27n31 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_58 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_55n56 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_44n45 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_10n11 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_26n27n31 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_57 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_60 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)


#***************************MLR_Education and AGE Confounder************************************
xtgee hwws_fv_21n22 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_23n24 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_25 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_50n52 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_51n54 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_58 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_55n56 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_53 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_44n45 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_41n42 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_fv_26n27n31 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_58 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_55n56 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_44n45 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_10n11 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_26n27n31 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_57 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

xtgee hwws_cust_60 i.time q2_2 q2_4 [pweight = pw], family(binomial) link(logit) i(psu_no) robust
margins, dydx(time) pwcompare(effects)

#Firth_fot these
hwws_fv_53 
hwws_fv_41n42 
hwws_fv_26n27n31
hwws_cust_55n56 
hwws_cust_10n11 
hwws_cust_26n27n31 
hwws_cust_60

xtgee hwws_fv_53 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_fv_53 i.time

xtgee hwws_fv_41n42 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_fv_41n42 i.time

xtgee hwws_fv_26n27n31 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_fv_26n27n31 i.time

xtgee hwws_cust_55n56 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_cust_55n56 i.time

xtgee hwws_cust_10n11 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_cust_10n11 i.time

xtgee hwws_cust_26n27n31 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_cust_26n27n31 i.time

xtgee hwws_cust_60 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_cust_60 i.time

xtgee hwws_cust_57 i.time [pweight = pw], family(binomial) link(logit) i(psu_no) corr(independent) vce(jackknife, mse)
jackknife _b[1.time] _b[_cons], eclass cluster(psu_no) mse: firthlogit hwws_cust_57 i.time
