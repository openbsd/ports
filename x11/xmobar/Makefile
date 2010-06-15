# $OpenBSD: Makefile,v 1.2 2010/06/15 17:55:45 kili Exp $

COMMENT =		minimalistic text based status bar

DISTNAME =		xmobar-0.9.2
PKGNAME =		${DISTNAME}p0
CATEGORIES =		x11
HOMEPAGE =		http://code.haskell.org/~arossato/xmobar/

MAINTAINER =		Jona Joachim <jaj@hcl-club.lu>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xext Xinerama c m util

MODULES =		lang/ghc converters/libiconv
MODGHC_BUILD =		cabal hackage nort

LIB_DEPENDS =		gmp::devel/gmp

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
