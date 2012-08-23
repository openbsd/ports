# $OpenBSD: Makefile,v 1.19 2012/08/23 15:52:47 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the Blowfish encryption algorithm

MODULES=	cpan
DISTNAME=	Crypt-Blowfish-2.12
REVISION=	2
CATEGORIES=	security
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += c

REGRESS_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>	
