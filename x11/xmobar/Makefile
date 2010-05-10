# $OpenBSD: Makefile,v 1.1.1.1 2010/05/10 08:07:06 dcoppa Exp $

COMMENT =		minimalistic text based status bar

DISTNAME =		xmobar-0.9.2
CATEGORIES =		x11
HOMEPAGE =		http://code.haskell.org/~arossato/xmobar/

MAINTAINER =		Jona Joachim <jaj@hcl-club.lu>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		X11 Xext Xinerama c iconv m pthread util

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage nort

LIB_DEPENDS =		:hs-X11->=1.3.0:x11/hs-X11 \
			::devel/hs-parsec \
			::devel/hs-stm

USE_X11 =		Yes

EXAMPLEDIR =		${PREFIX}/share/examples/xmobar

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/xmobar.config-sample ${EXAMPLEDIR}/xmobarrc

NO_REGRESS =		Yes

.include <bsd.port.mk>
