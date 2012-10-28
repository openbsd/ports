# $OpenBSD: Makefile,v 1.2 2012/10/28 23:27:05 kili Exp $

COMMENT =		configuration management library

DISTNAME =		configurator-0.2.0.0
REVISION =		0
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS +=		devel/hs-hashable \
			devel/hs-text>=0.11.1.0 \
			devel/hs-unix-compat \
			devel/hs-unordered-containers \
			textproc/hs-attoparsec>=0.10.0.2

BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
