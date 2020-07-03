# $OpenBSD: Makefile,v 1.28 2020/07/03 21:45:38 sthen Exp $

COMMENT=	module for writing rpc servers and clients

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	PlRPC-0.2020
CATEGORIES=	net
REVISION=	0

# Artistic License
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/p5-Net-Daemon
BUILD_DEPENDS=	net/p5-Net-Daemon

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=RPC/}
WRKDIST=	${WRKDIR}/PlRPC

.include <bsd.port.mk>
