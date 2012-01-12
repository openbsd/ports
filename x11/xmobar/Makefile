# $OpenBSD: Makefile,v 1.12 2012/01/12 21:42:07 dcoppa Exp $

COMMENT =		minimalistic text based status bar

DISTNAME =		xmobar-0.14
CATEGORIES =		x11
HOMEPAGE =		http://projects.haskell.org/xmobar

MAINTAINER =		Jona Joachim <jaj@hcl-club.lu>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c expat fontconfig freetype gmp m pthread pthread-stubs util \
		X11 Xau xcb Xdmcp Xext Xft Xinerama Xrandr Xrender z

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage nort
MODGHC_SETUP_CONF_ARGS = --flags="with_xft with_mpd with_utf8"

LIB_DEPENDS =		devel/gmp

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
