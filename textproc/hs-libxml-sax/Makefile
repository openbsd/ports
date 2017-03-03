# $OpenBSD: Makefile,v 1.14 2017/03/03 20:38:34 dcoppa Exp $

COMMENT =		Haskell bindings to the libXML2 SAX interface

DISTNAME =		libxml-sax-0.7.5
REVISION =		3
CATEGORIES =		textproc

HOMEPAGE =		https://john-millikin.com/software/haskell-libxml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KH75wPncqwrLC4pmptfJlY

RUN_DEPENDS =		devel/hs-text>=0.7 \
			textproc/hs-xml-types>=0.3,<0.4 \
			textproc/libxml
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
