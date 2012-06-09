# $OpenBSD: Makefile,v 1.2 2012/06/09 13:03:40 sthen Exp $

COMMENT =	cross-platform password manager

V =		1.5.3.6.3
REVISION =	0
DISTNAME =	zdia-gorilla-v${V}-0-gfc80d95
PKGNAME =	password-gorilla-${V}
CATEGORIES =	security

HOMEPAGE =	http://wiki.github.com/zdia/gorilla/

# GPLv2
PERMIT_PACKAGE_CDROM =  Yes
PERMIT_PACKAGE_FTP =    Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =  Yes

MASTER_SITES = http://github.com/zdia/gorilla/tarball/v${V}/ \
		http://spacehopper.org/mirrors/

USE_X11 =	Yes
MODULES =	x11/tk

RUN_DEPENDS =	devel/itcl \
		devel/tcllib \
		devel/tklib \
		${MODTK_RUN_DEPENDS}

NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*

WRKDIST =	${WRKDIR}/zdia-gorilla-fc80d95/sources

GORILLALIB =	${PREFIX}/lib/password-gorilla
GORILLASTUFF =	blowfish isaac.tcl viewhelp.tcl pwsafe \
			msgs pics pwsafe sha1 twofish modules

do-install:
	${MODTCL_WISH_ADJ} ${WRKDIST}/gorilla.tcl
	${SUBST_CMD} ${WRKDIST}/gorilla.tcl
	${INSTALL_PROGRAM_DIR} ${GORILLALIB}
	@cd ${WRKDIST}; \
		tar -cf - ${GORILLASTUFF} | tar -xf - -C ${GORILLALIB}
	${INSTALL_SCRIPT} ${WRKDIST}/gorilla.tcl ${PREFIX}/bin/gorilla

.include <bsd.port.mk>
