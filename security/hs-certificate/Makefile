# $OpenBSD: Makefile,v 1.14 2013/01/20 18:05:35 kili Exp $

COMMENT=		certificates and Key Reader/Writer

DISTNAME=		certificate-0.9.5
REVISION=		5
CATEGORIES=		security

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=		lang/ghc

MODGHC_BUILD =          cabal hackage haddock register

RUN_DEPENDS =		devel/hs-base64-bytestring \
			devel/hs-mtl \
			security/hs-asn1-data>=0.6.0,<0.7
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
