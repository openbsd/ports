# $OpenBSD: Makefile,v 1.16 2010/10/18 21:41:46 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to the Blowfish encryption algorithm

MODULES=	cpan
DISTNAME=	Crypt-Blowfish-2.12
REVISION=	0
CATEGORIES=	security
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=	::security/p5-Crypt-CBC

.include <bsd.port.mk>	
