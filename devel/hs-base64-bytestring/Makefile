# $OpenBSD: Makefile,v 1.1.1.1 2010/12/09 13:53:12 jasper Exp $

COMMENT=		fast base64 encodings and decoding for ByteStrings

DISTNAME=		base64-bytestring-0.1.0.1
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
