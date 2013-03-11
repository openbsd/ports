# $OpenBSD: Makefile,v 1.5 2013/03/11 11:42:41 espie Exp $

COMMENT =		Haskell bindings to the libXML2 SAX interface

DISTNAME =		libxml-sax-0.7.3
REVISION =		2
CATEGORIES =		textproc

HOMEPAGE =		https://john-millikin.com/software/haskell-libxml/

MAINTAINER =		David Coppa <dcoppa@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

RUN_DEPENDS =		devel/hs-text>=0.7,<0.12 \
			textproc/hs-xml-types>=0.3,<0.4
BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
