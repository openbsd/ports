# $OpenBSD: Makefile,v 1.11 2010/10/18 18:36:51 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	module for sending and receiving multicast messages

MODULES=	cpan
DISTNAME=	IO-Socket-Multicast-1.12
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-IO-Interface->=0.94:net/p5-IO-Interface
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
