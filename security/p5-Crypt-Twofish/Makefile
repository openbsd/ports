# $OpenBSD: Makefile,v 1.12 2010/09/24 15:32:34 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	module to implement the Twofish cipher

MODULES=	cpan
DISTNAME=	Crypt-Twofish-2.13
REVISION=	0
CATEGORIES=	security

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=	::security/p5-Crypt-CBC

.include <bsd.port.mk>	
