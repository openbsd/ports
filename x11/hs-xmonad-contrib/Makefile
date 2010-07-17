# $OpenBSD: Makefile,v 1.6 2010/07/17 13:43:37 kili Exp $

COMMENT =		third party xmonad extensions

DISTNAME =		xmonad-contrib-0.9.1
REVISION =		4
CATEGORIES =		x11
HOMEPAGE =		http://www.xmonad.org/

MAINTAINER =		Jona Joachim <jaj@hcl-club.lu>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage register haddock

LIB_DEPENDS =		::x11/xmonad,-lib
RUN_DEPENDS =		${LIB_DEPENDS}

NO_REGRESS =		Yes

.include <bsd.port.mk>
