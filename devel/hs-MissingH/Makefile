# $OpenBSD: Makefile,v 1.11 2011/04/11 14:45:14 kili Exp $

COMMENT =		large library of utility functions

DISTNAME =		MissingH-1.1.0.3
REVISION =		8
CATEGORIES =		devel
HOMEPAGE =		http://software.complete.org/missingh

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
			devel/hs-regex-compat
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
