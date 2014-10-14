# $OpenBSD: Makefile,v 1.1.1.1 2014/10/14 13:06:02 dcoppa Exp $

COMMENT =		scientific number type

DISTNAME =		scientific-0.3.3.1
CATEGORIES =		devel

HOMEPAGE =		https://github.com/basvandijk/scientific

MAINTAINER =		David Schaefer <dawedawe@gmx.de>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-hashable>=1.1.2,<1.3 \
			devel/hs-text>=0.8,<1.3

.include <bsd.port.mk>
