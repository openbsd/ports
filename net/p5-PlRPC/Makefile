# $OpenBSD: Makefile,v 1.23 2013/10/11 23:50:30 naddy Exp $

COMMENT=	module for writing rpc servers and clients

MODULES=	cpan
DISTNAME=	PlRPC-0.2018
REVISION=	1
CATEGORIES=	net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/p5-Net-Daemon>=0.13
BUILD_DEPENDS=	${RUN_DEPENDS}

CPAN_AUTHOR=	JWIED

.include <bsd.port.mk>
