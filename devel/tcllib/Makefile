# $OpenBSD: Makefile,v 1.10 2009/03/19 16:54:32 sthen Exp $

COMMENT =		Tcl Standard Library

DISTNAME =		tcllib-1.11.1
CATEGORIES =		devel lang/tcl
HOMEPAGE =		http://sourceforge.net/projects/tcllib/

MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcllib/}
MODULES =		lang/tcl
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}
NO_BUILD =		Yes

SCRIPTS_TCLSH_APPS =	dtplite page tcldocstrip

SCRIPTS_TCLSH =		bibtex/bibtex.tcl \
			csv/csv2html csv/csvcut csv/csvdiff csv/csvjoin csv/csvsort csv/csvuniq \
			ftp/ftpdemo.tcl ftp/ftpvalid \
			htmlparse/webviewer.tcl \
			irc/irc_example.tcl \
			ldap/ldapChangeTest ldap/ldapquery ldap/ldifdump \
			log/logtotext.tcl \
			mapproj/tkmap.tcl \
			math/bigfloat.demo.tcl \
			ntp/rdate.tcl \
			sasl/saslclient.tcl \
			smtpd/tcl_smtpd smtpd/tk_smtpd \
			struct/diff.tcl struct/diff2.tcl \
			term/attributes term/box term/box2 term/clear term/colors term/frame \
			term/graphics term/imenu term/ipager term/menu term/menu2 term/para \
			term/title \
			tie/receiving_client.tcl tie/sending_client.tcl tie/server.tcl \
			tie/transceiver.tcl

SCRIPTS_TCLSH_NOEXEC =	ftp/hpupdate.tcl ftp/mirror.tcl ftp/newer.tcl \
			ftpd/ftpd ftpd/ftpd.test ftpd/ftpd.unix \
			log/logtofile.tcl \
			mime/maildemo.tcl mime/mbot/impersonal.tcl mime/mbot/personal.tcl \
			nntp/postnews

# The installer maps package name to directory name.
# Fool it so it will install the 'log' package examples.
pre-configure:
	ln -s ${WRKSRC}/examples/logger ${WRKSRC}/examples/log

do-configure:
	cp ${WRKSRC}/support/installation/man.macros \
		${WRKSRC}/modules/doctools/mpformats/man.macros
	@${MODTCL_TCLSH_ADJ} ${SCRIPTS_TCLSH_APPS:S!^!${WRKSRC}/apps/!} \
		${SCRIPTS_TCLSH:S!^!${WRKSRC}/examples/!} \
		${SCRIPTS_TCLSH_NOEXEC:S!^!${WRKSRC}/examples/!}

do-install:
	${MODTCL_BIN} ${WRKSRC}/installer.tcl \
	-no-wait -no-gui -no-html \
	-pkgs -nroff -examples -apps \
	-pkg-path ${PREFIX}/lib/tcllib \
	-nroff-path ${PREFIX}/man/mann \
	-example-path ${PREFIX}/share/examples/tcllib \
	-app-path ${PREFIX}/bin
	@chmod 555 ${SCRIPTS_TCLSH:S!^!${PREFIX}/share/examples/tcllib/!}
	env TCLLIBPATH=${PREFIX}/lib ${MODTCL_BIN} ${FILESDIR}/mkindex.tcl ${PREFIX}/man/mann \
		${PKGDIR}/DESCR ${PREFIX}/man/mann/tcllib.n tcllib "${COMMENT}" 1.11.1
	@chown root:bin ${PREFIX}/man/mann/tcllib.n
	@chmod 444 ${PREFIX}/man/mann/tcllib.n

# Define TEST_MODULES to restrict to a subset of regression tests.
do-regress:
	${SETENV} ${MAKE_ENV} ${MODTCL_BIN} \
	${WRKSRC}/sak.tcl test run -v ${TEST_MODULES} \
	${REGRESS_LOG}

.include <bsd.port.mk>
