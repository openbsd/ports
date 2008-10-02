# $OpenBSD: Makefile,v 1.7 2008/10/02 20:38:37 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	module for sending and receiving multicast messages

MODULES=	cpan
DISTNAME=	IO-Socket-Multicast-1.04
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-IO-Interface->=0.94:net/p5-IO-Interface
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
