# $OpenBSD: Makefile,v 1.4 2012/01/21 17:15:34 kili Exp $

COMMENT=		fast base64 encodings and decoding for ByteStrings

DISTNAME=		base64-bytestring-0.1.0.3
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

.include <bsd.port.mk>
