# $OpenBSD: Makefile,v 1.8 2010/08/02 11:24:41 dcoppa Exp $

COMMENT =		third party xmonad extensions

DISTNAME =		xmonad-contrib-0.9.1
REVISION =		6
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
RUN_DEPENDS =		${LIB_DEPENDS} \
			::shells/bash

NO_REGRESS =		Yes

.include <bsd.port.mk>
