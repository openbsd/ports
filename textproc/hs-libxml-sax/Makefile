# $OpenBSD: Makefile,v 1.16 2018/01/22 21:48:45 kili Exp $

COMMENT =		Haskell bindings to the libXML2 SAX interface

DISTNAME =		libxml-sax-0.7.5
REVISION =		5
CATEGORIES =		textproc

HOMEPAGE =		https://john-millikin.com/software/haskell-libxml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CWwwLs2Cpr07R9NPn064CX

RUN_DEPENDS =		devel/hs-text>=0.7 \
			textproc/hs-xml-types>=0.3,<0.4 \
			textproc/libxml
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
