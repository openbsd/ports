# $OpenBSD: Makefile,v 1.13 2010/12/03 11:45:41 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	module for sending and receiving multicast messages

MODULES=	cpan
DISTNAME=	IO-Socket-Multicast-1.12
REVISION=	0
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	net/p5-IO-Interface>=0.94
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
