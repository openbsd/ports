# $OpenBSD: Makefile,v 1.9 2012/12/02 20:43:57 kili Exp $

COMMENT =		fast, lightweight YAML loader and dumper

DISTNAME =		HsSyck-0.50
REVISION =		3
EPOCH =			0
CATEGORIES =		devel

# MIT (see comment in HsSyck.cabal)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc
MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-syb

.include <bsd.port.mk>
