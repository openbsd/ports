# $OpenBSD: Makefile,v 1.20 2019/09/30 13:00:55 kili Exp $

COMMENT =		Haskell bindings to the libXML2 SAX interface

DISTNAME =		libxml-sax-0.7.5
REVISION =		8
CATEGORIES =		textproc

HOMEPAGE =		https://john-millikin.com/software/haskell-libxml/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	4zvThBcDksZKjZMmnQUocC

RUN_DEPENDS =		textproc/hs-xml-types>=0.3,<0.4 \
			textproc/libxml
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
