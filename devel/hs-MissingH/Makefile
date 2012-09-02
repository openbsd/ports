# $OpenBSD: Makefile,v 1.16 2012/09/02 20:04:51 kili Exp $

COMMENT =		large library of utility functions

DISTNAME =		MissingH-1.1.1.0
REVISION =		1
CATEGORIES =		devel
HOMEPAGE =		https://github.com/jgoerzen/missingh/wiki

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-hslogger \
			devel/hs-HUnit \
			devel/hs-mtl \
			devel/hs-random \
			devel/hs-regex-compat
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
