# $OpenBSD: Makefile,v 1.13 2011/01/05 16:27:24 stu Exp $

COMMENT =	Tcl Standard Library

DISTNAME =	tcllib-1.12
CATEGORIES =	devel lang/tcl
HOMEPAGE =	http://sourceforge.net/projects/tcllib/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD style
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tcllib/}
MODULES =	lang/tcl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}
USE_GROFF =	Yes
NO_BUILD =	Yes
PKG_ARCH =	*

SCRIPTS_TCLSH_APPS = \
	dtplite page tcldocstrip

SCRIPTS_TCLSH =	\
	bibtex/bibtex.tcl \
	csv/csv2html csv/csvcut csv/csvdiff csv/csvjoin csv/csvsort csv/csvuniq \
	ftp/ftpdemo.tcl ftp/ftpvalid \
	htmlparse/webviewer.tcl \
	irc/irc_example.tcl \
	ldap/ldapChangeTest ldap/ldapquery ldap/ldifdump \
	logger/logtotext.tcl \
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

SCRIPTS_TCLSH_NOEXEC = \
	ftp/hpupdate.tcl ftp/mirror.tcl ftp/newer.tcl \
	ftpd/ftpd ftpd/ftpd.test ftpd/ftpd.unix \
	logger/logtofile.tcl \
	mime/maildemo.tcl mime/mbot/impersonal.tcl mime/mbot/personal.tcl \
	nntp/postnews

do-configure:
	mv	${WRKSRC}/modules/simulation/random.man \
		${WRKSRC}/modules/simulation/simulation_random.man
	@${MODTCL_TCLSH_ADJ} \
		${SCRIPTS_TCLSH_APPS:S!^!${WRKSRC}/apps/!} \
		${SCRIPTS_TCLSH:S!^!${WRKSRC}/examples/!} \
		${SCRIPTS_TCLSH_NOEXEC:S!^!${WRKSRC}/examples/!}

do-install:
	${MODTCL_BIN} ${WRKSRC}/installer.tcl \
	-no-wait -no-gui -no-html \
	-pkgs -nroff -examples -apps \
	-pkg-path ${DESTDIR}${MODTCL_TCLDIR} \
	-nroff-path ${PREFIX}/man/mann \
	-example-path ${PREFIX}/share/examples/tcllib \
	-app-path ${PREFIX}/bin
	@${CHMOD} ${BINMODE} ${SCRIPTS_TCLSH:S!logger!log!:S!^!${PREFIX}/share/examples/tcllib/!}
	${SETENV} TCLLIBPATH=${DESTDIR}${MODTCL_TCLDIR} ${MODTCL_BIN} \
		${FILESDIR}/mkindex.tcl ${PREFIX}/man/mann \
		${PKGDIR}/DESCR ${PREFIX}/man/mann/tcllib.n tcllib "${COMMENT}" 1.12
	@${CHOWN} ${MANOWN}:${MANGRP} ${PREFIX}/man/mann/tcllib.n
	@${CHMOD} ${MANMODE} ${PREFIX}/man/mann/tcllib.n

# Define TEST_MODULES to restrict to a subset of regression tests.
do-regress:
	${SETENV} ${MAKE_ENV} ${MODTCL_BIN} \
	${WRKSRC}/sak.tcl test run -v ${TEST_MODULES} \
	${REGRESS_LOG}

.include <bsd.port.mk>
