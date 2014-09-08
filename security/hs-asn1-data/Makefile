# $OpenBSD: Makefile,v 1.14 2014/09/08 17:04:51 jasper Exp $

COMMENT=		ASN1 data reader and writer for various forms

DISTNAME=		asn1-data-0.6.1.2
REVISION=		4
CATEGORIES=		security converters

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-mtl \
			devel/hs-enumerator>=0.4.5,<0.5 \
			devel/hs-text>=0.11 \
			textproc/hs-attoparsec>=0.8,<0.11 \
			textproc/hs-attoparsec-enumerator>=0.2,<0.4
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
