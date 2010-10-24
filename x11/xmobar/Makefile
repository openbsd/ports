# $OpenBSD: Makefile,v 1.6 2010/10/24 21:15:36 ajacoutot Exp $

COMMENT =		minimalistic text based status bar

DISTNAME =		xmobar-0.11.1
CATEGORIES =		x11
HOMEPAGE =		http://code.haskell.org/~arossato/xmobar/

MAINTAINER =		Jona Joachim <jaj@hcl-club.lu>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xext Xinerama c gmp m pthread util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage nort

LIB_DEPENDS =		::devel/gmp

BUILD_DEPENDS =		:hs-X11->=1.3.0:x11/hs-X11 \
			::devel/hs-parsec \
			::devel/hs-stm


EXAMPLEDIR =		${PREFIX}/share/examples/xmobar

post-patch:
	@cp ${FILESDIR}/Batt.hs ${WRKBUILD}/Plugins/Monitors
	@mkdir ${WRKBUILD}/Plugins/Monitors/Batt
	@cp ${FILESDIR}/Binding.hsc ${WRKBUILD}/Plugins/Monitors/Batt
	@cp ${FILESDIR}/apm.c ${WRKBUILD}/Plugins/Monitors/Batt
	@cp ${FILESDIR}/apm.h ${WRKBUILD}/Plugins/Monitors/Batt

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/xmobar.config-sample ${EXAMPLEDIR}/xmobarrc

NO_REGRESS =		Yes

.include <bsd.port.mk>
