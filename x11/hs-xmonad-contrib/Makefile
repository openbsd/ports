# $OpenBSD: Makefile,v 1.12 2011/04/04 22:41:30 kili Exp $

COMMENT =		third party xmonad extensions

DISTNAME =		xmonad-contrib-0.9.2
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

LIB_DEPENDS =		x11/xmonad,-lib
RUN_DEPENDS =		${LIB_DEPENDS} \
			shells/bash

NO_REGRESS =		Yes

VMEM_WARNING =		Yes

.include <bsd.port.mk>
