# $OpenBSD: Makefile,v 1.4 2010/07/17 13:54:30 kili Exp $

COMMENT =		minimalistic text based status bar

DISTNAME =		xmobar-0.9.2
REVISION =		1
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

USE_X11 =		Yes

EXAMPLEDIR =		${PREFIX}/share/examples/xmobar

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/xmobar.config-sample ${EXAMPLEDIR}/xmobarrc

NO_REGRESS =		Yes

.include <bsd.port.mk>
