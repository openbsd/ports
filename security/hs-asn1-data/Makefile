# $OpenBSD: Makefile,v 1.7 2011/12/31 22:19:45 kili Exp $

COMMENT=		ASN1 data reader and writer for various forms

DISTNAME=		asn1-data-0.4.6
REVISION=		3
CATEGORIES=		security converters

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-binary>=0.5 \
			hs-enumerator->=0.4.5,<0.5:devel/hs-enumerator \
			devel/hs-mtl \
			textproc/hs-attoparsec-enumerator
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
