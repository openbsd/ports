all:	

build:

install:	install_libexec install_etc install_share install_lib install_bin

BINS=	MailScanner df2mbox d2mbox update_phishing_sites check_mailscanner
BINS+=	clean.quarantine clean.SA.cache analyse_SpamAssassin_cache


install_bin:
.for _f in ${BINS}
	@${INSTALL_SCRIPT} bin/${_f} ${PREFIX}/bin
.endfor

install_libexec:
	@mkdir -p ${PREFIX}/libexec/MailScanner
	@-chmod -R ${BINMODE} ${PREFIX}/libexec/MailScanner 2>/dev/null
	${INSTALL_SCRIPT} bin/MailScanner ${PREFIX}/libexec/MailScanner
	( cd lib ; find * -name "*-wrapper" -exec ${INSTALL_SCRIPT} '{}' ${PREFIX}'/libexec/MailScanner/{}'.sample \; ) 
	( cd lib ; find * -name "*-autoupdate" -exec ${INSTALL_SCRIPT} '{}' ${PREFIX}'/libexec/MailScanner/{}'.sample \; )


ETC=	MailScanner.conf filename.rules.conf filetype.rules.conf
ETC+=   phishing.safe.sites.conf
ETC+=	spam.assassin.prefs.conf spam.lists.conf virus.scanners.conf
ETC+=	rules/spam.whitelist.rules rules/bounce.rules

install_etc:
	@${BSD_INSTALL_DATA_DIR} ${PREFIX}/share/examples/MailScanner
	@${BSD_INSTALL_DATA_DIR} ${PREFIX}/share/examples/MailScanner/rules
.for _f in ${ETC}
	@${INSTALL_DATA} etc/${_f} ${PREFIX}/share/examples/MailScanner/${_f}
.endfor
	${INSTALL_DATA} etc/rules/EXAMPLES ${PREFIX}/share/examples/MailScanner/rules/EXAMPLES
	${INSTALL_DATA} etc/rules/README ${PREFIX}/share/examples/MailScanner/rules/README

	
install_share:
	@${BSD_INSTALL_DATA_DIR} ${PREFIX}/share/doc

	@${BSD_INSTALL_DATA_DIR} ${PREFIX}/share/MailScanner
	@${BSD_INSTALL_DATA_DIR} ${PREFIX}/share/doc/MailScanner
	( cd docs ; find * -type d -exec ${BSD_INSTALL_DATA_DIR} ${PREFIX}'/share/doc/MailScanner/{}' \; )
	( cd docs ; find * -type f ! -name "*.orig" -exec ${INSTALL_DATA} '{}' ${PREFIX}'/share/doc/MailScanner/{}' \; )

	${INSTALL_DATA} INSTALL ${PREFIX}/share/doc/MailScanner/INSTALL
	${INSTALL_DATA} INSTALL.FreeBSD ${PREFIX}/share/doc/MailScanner/INSTALL.FreeBSD
	${INSTALL_DATA} INSTALL.OpenBSD ${PREFIX}/share/doc/MailScanner/INSTALL.OpenBSD
	${INSTALL_DATA} README ${PREFIX}/share/doc/MailScanner
	${INSTALL_DATA} README.OpenBSD.port ${PREFIX}/share/doc/MailScanner
	( cd etc ; find reports -type d -exec ${BSD_INSTALL_DATA_DIR} ${PREFIX}'/share/MailScanner/{}' \; ) 2>/dev/null
	( cd etc ; find reports -type f ! -name "*.orig" -exec ${INSTALL_DATA} '{}' ${PREFIX}'/share/MailScanner/{}' \; )
	@-chmod -R ${BINMODE} ${PREFIX}/share/MailScanner/reports

	
install_lib:
	@${BSD_INSTALL_PROGRAM_DIR} ${PREFIX}/lib/MailScanner
	@${BSD_INSTALL_PROGRAM_DIR} ${PREFIX}/lib/MailScanner/MailScanner 
	@${BSD_INSTALL_PROGRAM_DIR} ${PREFIX}/lib/MailScanner/MailScanner/CustomFunctions
	${INSTALL_SCRIPT} lib/MailScanner.pm ${PREFIX}/lib/MailScanner/MailScanner.pm
	(cd lib/MailScanner ; find * -type f ! -name "*.orig" -exec ${INSTALL_SCRIPT} '{}' ${PREFIX}'/lib/MailScanner/MailScanner/{}' \; )

