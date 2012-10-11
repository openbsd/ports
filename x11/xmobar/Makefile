# $OpenBSD: Makefile,v 1.16 2012/10/11 14:23:50 dcoppa Exp $

COMMENT =		minimalistic text based status bar

DISTNAME =		xmobar-0.15
REVISION =		1
CATEGORIES =		x11
HOMEPAGE =		http://projects.haskell.org/xmobar

MAINTAINER =		Jona Joachim <jaj@hcl-club.lu>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xext Xft Xinerama Xrandr c m pthread \
			util

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage nort
MODGHC_SETUP_CONF_ARGS = --flags="with_xft with_mpd"

BUILD_DEPENDS =		devel/hs-mtl \
			devel/hs-parsec \
			devel/hs-stm \
			x11/hs-X11>=1.3.0 \
			x11/hs-X11-xft>=0.2 \
			audio/hs-libmpd>=0.5


EXAMPLEDIR =		${PREFIX}/share/examples/xmobar

post-patch:
	@cp ${FILESDIR}/Batt.hs ${WRKBUILD}/src/Plugins/Monitors
	@mkdir ${WRKBUILD}/src/Plugins/Monitors/Batt
	@cp ${FILESDIR}/Binding.hsc ${WRKBUILD}/src/Plugins/Monitors/Batt
	@cp ${FILESDIR}/apm.c ${WRKBUILD}/src/Plugins/Monitors/Batt
	@cp ${FILESDIR}/apm.h ${WRKBUILD}/src/Plugins/Monitors/Batt

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/xmobar.config ${EXAMPLEDIR}/xmobarrc

NO_REGRESS =		Yes

.include <bsd.port.mk>
