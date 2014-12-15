# $OpenBSD: Makefile,v 1.2 2014/12/15 15:14:35 kili Exp $

COMMENT =		attoparsec parsers for http-types

DISTNAME =		http-attoparsec-0.1.0
REVISION =		0
CATEGORIES =		devel textproc www
HOMEPAGE =		https://github.com/tlaitinen/http-attoparsec

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/hs-attoparsec>=0.10.4.0,<0.11 \
			www/hs-http-types>=0.8.0,<0.9

.include <bsd.port.mk>
