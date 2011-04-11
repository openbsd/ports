# $OpenBSD: Makefile,v 1.13 2011/04/11 14:58:57 kili Exp $

COMMENT =		third party xmonad extensions

DISTNAME =		xmonad-contrib-0.9.2
REVISION =		0
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

BUILD_DEPEND =		${RUN_DPENDS}
RUN_DEPENDS =		shells/bash \
			x11/xmonad,-lib

NO_REGRESS =		Yes

VMEM_WARNING =		Yes

.include <bsd.port.mk>
