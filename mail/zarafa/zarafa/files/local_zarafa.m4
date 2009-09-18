divert(-1)
divert(0)

VERSIONID(`@(#)zarafa.m4        31-Aug-2007')

divert(-1)

ifdef(`_MAILER_local_',
	`errprint(`*** FEATURE(local_zarafa) must occur before MAILER(local)')')dnl

define(`LOCAL_MAILER_PATH',
	ifelse(defn(`_ARG_'), `',

	ifdef(`ZARAFA_MAILER_PATH',
		ZARAFA_MAILER_PATH,
		`${PREFIX}/bin/zarafa-dagent'),
	ARG_))
define(`LOCAL_MAILER_ARGS',
	ifelse(len(X`'_ARG2_), `1', `zarafa-dagent $u', _ARG2_))
undefine(`_LOCAL_PROCMAIL_')
undefine(`_LOCAL_LMTP_')
undefine(`LOCAL_MAILER_DSN_DIAGNOSTIC_CODE')
