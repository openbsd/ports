# $OpenBSD: Makefile,v 1.26 2013/08/19 12:02:07 dcoppa Exp $

COMMENT =		minimalistic text based status bar

DISTNAME =		xmobar-0.18
REVISION =		3
CATEGORIES =		x11
HOMEPAGE =		http://projects.haskell.org/xmobar

MAINTAINER =		Jona Joachim <jona@joachim.cc>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		X11 Xext Xft Xinerama Xrandr Xss \
			c m pthread util xml2

MODULES =		lang/ghc converters/libiconv

MODGHC_BUILD =		cabal hackage nort
MODGHC_SETUP_CONF_ARGS = --flags="with_xft with_mpd with_mpris"

BUILD_DEPENDS =		devel/hs-mtl \
			devel/hs-parsec \
			devel/hs-regex-pcre-builtin \
			devel/hs-stm>=2.3,<2.5 \
			x11/hs-X11>=1.6.1 \
			x11/hs-X11-xft>=0.2,<0.4 \
			x11/hs-dbus>=0.10 \
			audio/hs-libmpd>=0.8

LIB_DEPENDS =		textproc/libxml

EXAMPLEDIR =		${PREFIX}/share/examples/xmobar

NO_TEST =		Yes

post-patch:
	@cp ${FILESDIR}/Batt.hs ${WRKBUILD}/src/Plugins/Monitors
	@mkdir ${WRKBUILD}/src/Plugins/Monitors/Batt
	@cp ${FILESDIR}/Binding.hsc ${WRKBUILD}/src/Plugins/Monitors/Batt
	@cp ${FILESDIR}/apm.c ${WRKBUILD}/src/Plugins/Monitors/Batt
	@cp ${FILESDIR}/apm.h ${WRKBUILD}/src/Plugins/Monitors/Batt

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/samples/xmobar.config ${EXAMPLEDIR}/xmobarrc

.include <bsd.port.mk>
