divert(-1)
divert(0)

VERSIONID(`@(#)kopano.m4        31-Aug-2007')

divert(-1)

ifdef(`_MAILER_local_',
	`errprint(`*** FEATURE(local_kopano) must occur before MAILER(local)')')dnl

define(`LOCAL_MAILER_PATH',
	ifelse(defn(`_ARG_'), `',

	ifdef(`KOPANO_MAILER_PATH',
		KOPANO_MAILER_PATH,
		`${TRUEPREFIX}/sbin/kopano-dagent'),
	_ARG_))
define(`LOCAL_MAILER_ARGS',
	ifelse(len(X`'_ARG2_), `1', `kopano-dagent $u', _ARG2_))
undefine(`_LOCAL_PROCMAIL_')
undefine(`_LOCAL_LMTP_')
undefine(`LOCAL_MAILER_DSN_DIAGNOSTIC_CODE')
