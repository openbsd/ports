PUSHDIVERT(-1)
#
#   Mailer for Zarafa
#

ifdef(`ZARAFA_MAILER_ARGS',,
		`define(`ZARAFA_MAILER_ARGS', zarafa-dagent $u)')
ifdef(`ZARAFA_MAILER_PATH',,
		`define(`ZARAFA_MAILER_PATH', ${PREFIX}/bin/zarafa-dagent)')
POPDIVERT
#######################################
###   Zarafa Mailer specification   ###
#######################################

VERSIONID(`@(#)zarafa.m4        31-Aug-2007')

MZARAFA,P=ZARAFA_MAILER_PATH, F=DFMhu,S=15, R=25, T=X-Phone/X-ZARAFA/X-Unix,
	A=ZARAFA_MAILER_ARGS

LOCAL_CONFIG
CPZARAFA
