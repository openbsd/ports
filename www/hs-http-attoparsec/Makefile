# $OpenBSD: Makefile,v 1.4 2015/09/21 20:20:12 kili Exp $

BROKEN =		needs an update

COMMENT =		attoparsec parsers for http-types

DISTNAME =		http-attoparsec-0.1.1
CATEGORIES =		devel textproc www
HOMEPAGE =		https://github.com/tlaitinen/http-attoparsec

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/hs-attoparsec>=0.10.4.0,<0.12 \
			www/hs-http-types>=0.8.0,<0.9

.include <bsd.port.mk>
