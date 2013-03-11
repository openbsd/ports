# $OpenBSD: Makefile,v 1.22 2013/03/11 11:35:54 espie Exp $

COMMENT=	module for writing rpc servers and clients

MODULES=	cpan
DISTNAME=	PlRPC-0.2018
REVISION=	1
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/p5-Net-Daemon>=0.13
BUILD_DEPENDS=	${RUN_DEPENDS}

CPAN_AUTHOR=	JWIED

.include <bsd.port.mk>
