#!/system/bin/sh
#Jevons@OnLineRD.DeviceService, 2013/10/23 add this file for properties


#OPPO_TARGET_DEVICE

#  hw_pcb_version:10、11、12、13
#  hw_rf_version：
#	11,		//WCDMA_GSM_
#	12,		//WCDMA_GSM_LTE_	
#	13,		//WCDMA_GSM_LTE_
#	21,		//WCDMA_GSM_CDMA_	
#	22,		//WCDMA_GSM_
#	23,		//WCDMA_GSM_
#	31,		//TD_GSM	
#	32,		//TD_GSM_LTE	
#	33,		//TDD_FDD_TD_W_GSM		

######################################################################
#    Copied from 8974 self-init.c
#    int NETWORK_MODE_WCDMA_PREF = 0; //GSM/WCDMA (WCDMA preferred) 
#    int NETWORK_MODE_GSM_ONLY = 1; //GSM only 
#    int NETWORK_MODE_WCDMA_ONLY = 2; //WCDMA only 
#    int NETWORK_MODE_GSM_UMTS = 3; //GSM/WCDMA (auto mode, according to PRL)
#                                   //         AVAILABLE Application Settings menu
#    int NETWORK_MODE_CDMA = 4; //CDMA and EvDo (auto mode, according to PRL)
#                               //             AVAILABLE Application Settings menu
#    int NETWORK_MODE_CDMA_NO_EVDO = 5; //CDMA only 
#    int NETWORK_MODE_EVDO_NO_CDMA = 6; //EvDo only 
#    int NETWORK_MODE_GLOBAL = 7; //GSM/WCDMA, CDMA, and EvDo (auto mode, according to PRL)
#                                 //           AVAILABLE Application Settings menu
#    int NETWORK_MODE_LTE_CDMA_EVDO = 8; //LTE, CDMA and EvDo 
#    int NETWORK_MODE_LTE_GSM_WCDMA = 9; //LTE, GSM/WCDMA 
#    int NETWORK_MODE_LTE_CMDA_EVDO_GSM_WCDMA = 10; //LTE, CDMA, EvDo, GSM/WCDMA 
#    int NETWORK_MODE_LTE_ONLY = 11; //LTE Only mode. 
#    int NETWORK_MODE_LTE_WCDMA = 12; //LTE/WCDMA 
#    int NETWORK_MODE_TD_SCDMA_ONLY = 13; //TD-SCDMA only 
#    int NETWORK_MODE_TD_SCDMA_WCDMA = 14; //TD-SCDMA and WCDMA 
#    int NETWORK_MODE_TD_SCDMA_LTE = 15; //TD-SCDMA and LTE 
#    int NETWORK_MODE_TD_SCDMA_GSM = 16; //TD-SCDMA and GSM 
#    int NETWORK_MODE_TD_SCDMA_GSM_LTE = 17; //TD-SCDMA,GSM and LTE 
#    int NETWORK_MODE_TD_SCDMA_GSM_WCDMA = 18; //TD-SCDMA, GSM/WCDMA 
#    int NETWORK_MODE_TD_SCDMA_WCDMA_LTE = 19; //TD-SCDMA, WCDMA and LTE 
#    int NETWORK_MODE_TD_SCDMA_GSM_WCDMA_LTE = 20; //TD-SCDMA, GSM/WCDMA and LTE 
#    int NETWORK_MODE_TD_SCDMA_CDMA_EVDO_GSM_WCDMA = 21; //TD-SCDMA,EvDo,CDMA,GSM/WCDMA
#    int NETWORK_MODE_TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA = 22; //TD-SCDMA/LTE/GSM/WCDMA, CDMA, and
#                                                            //   EvDo 
######################################################################

#pcb_version=`cat sys/devices/system/soc/soc0/hw_pcb_version`
#rf_version=`cat sys/devices/system/soc/soc0/hw_rf_version`

#ifdef VENDOR_EDIT
#BaoZhu.Yu@Prd.CommApp.Mms, 2014/03/19, Add for 14033, 14017, 14013, 14027.
modem_type=`cat /proc/oppoVersion/modemType`        #区分不同modem制式
operator_name=`cat /proc/oppoVersion/operatorName`  #区分内销,外销等不同运营商
pcb_version=`cat /proc/oppoVersion/pcbVersion`      #区分不同pcb阶段
prj_version=`cat /proc/oppoVersion/prjVersion`      #区分不同项目
reserved_version=`cat /proc/oppoVersion/reserved`   #预留位

setprop ro.modem_type $modem_type
setprop ro.operator_name $operator_name
setprop ro.prj_version $prj_version
setprop ro.reserved_version $reserved_version
#endif /* VENDOR_EDIT */

setprop ro.pcb_version $pcb_version

OPPO_TARGET_DEVICE=`getprop ro.product.model`
#BaoZhu.Yu@Mobile.Network.RF, Move  "ro.rf_version","ro.telephony.default_network" to /android/vendor/oppo/oppo_config/MSM_XXX/oppo_buildinfo.sh
if   [ $prj_version = "14033" ] ; then
    phone_type="R2017"
elif [ $prj_version = "14013" ] ; then
    phone_type="R831S"
elif [ $prj_version = "14017" ] ; then
    phone_type="R7007"
elif [ $prj_version = "14018" ] ; then
    phone_type="R7000"	
elif [ $prj_version = "14027" ] ; then
    phone_type="R6007"
elif [ $prj_version = "14029" ] ; then
    phone_type="N5117"
elif [ $prj_version = "13095" ] ; then
    phone_type="R8007"
elif [ $prj_version = "13096" ] ; then
	phone_type="R8006"
elif [ $prj_version = "14016" ] ; then
    phone_type="R830S"
elif [ $prj_version = "14035" ] ; then
    phone_type="R2010"
elif [ $prj_version = "14071" ] ; then
    phone_type="R6006"
elif [ $prj_version = "14089" ] ; then	
	phone_type="N5116"
elif [ $prj_version = "14095" ] ; then	
	phone_type="R2016"	
elif [ $prj_version = "14031" ] ; then	
	phone_type="N5110"	
elif [ $prj_version = "13084" ] ; then	
	phone_type="R8000"	
else
    phone_type="R8007"
fi


date_ymd=`getprop ro.build.date.ymd`
product_brand=`getprop ro.product.brand`

hardware=$phone_type"_"$pcb_version"_"
build_display_id=$hardware$date_ymd
softversion=`getprop ro.build.soft.version`
#build_display_full_id=$hardware$softversion"_"$date_ymd
build_display_full_id=$phone_type"_11_"$softversion"_"$date_ymd

setprop ro.build.id.hardware $hardware
setprop ro.build.display.full_id $build_display_full_id

setprop ro.product.device $phone_type
setprop ro.build.product $phone_type

product_name=$product_brand"_13077"
setprop ro.product.name $product_name






#setprop ro.product.model $phone_type
#oppo_product_model=$product_brand" "$phone_type
#setprop ro.oppo.product.model $oppo_product_model

#platform_version=`getprop ro.build.version.release`
#build_id=`getprop ro.build.id`
#build_date_utc=`getprop ro.build.date.utc`
#target_build_variant=$TARGET_BUILD_VARIANT
#build_version_tags=`getprop ro.build.tags`
#fingerprint=$product_brand"/"$product_name"/"$phone_version":"$platform_version"/"$build_id"/"$build_date_utc":"$target_build_variant"/"$build_version_tags
#setprop ro.build.fingerprint $fingerprint

