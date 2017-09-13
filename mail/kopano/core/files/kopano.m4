PUSHDIVERT(-1)
#
#   Mailer for Kopano
#

ifdef(`KOPANO_MAILER_ARGS',,
		`define(`KOPANO_MAILER_ARGS', kopano-dagent $u)')
ifdef(`KOPANO_MAILER_PATH',,
		`define(`KOPANO_MAILER_PATH', ${TRUEPREFIX}/sbin/kopano-dagent)')
POPDIVERT
#######################################
###   Kopano Mailer specification   ###
#######################################

VERSIONID(`@(#)kopano.m4        31-Aug-2007')

MKOPANO,P=KOPANO_MAILER_PATH, F=DFMhu,S=15, R=25, T=X-Phone/X-KOPANO/X-Unix,
	A=KOPANO_MAILER_ARGS

LOCAL_CONFIG
CPKOPANO
