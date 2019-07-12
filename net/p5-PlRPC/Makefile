# $OpenBSD: Makefile,v 1.27 2019/07/12 20:48:41 sthen Exp $

COMMENT=	module for writing rpc servers and clients

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	PlRPC-0.2020
CATEGORIES=	net

# Artistic License
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/p5-Net-Daemon
BUILD_DEPENDS=	net/p5-Net-Daemon

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=RPC/}
WRKDIST=	${WRKDIR}/PlRPC

.include <bsd.port.mk>
