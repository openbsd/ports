# $OpenBSD: Makefile,v 1.1.1.1 2010/12/09 13:55:34 jasper Exp $

COMMENT=		certificates and Key Reader/Writer

DISTNAME=		certificate-0.3.2
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
			devel/hs-binary>=0.5 \
			security/hs-asn1-data>=0.2
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
