# $OpenBSD: Makefile,v 1.26 2016/03/20 19:56:57 naddy Exp $

COMMENT=	module for writing rpc servers and clients

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	PlRPC-0.2020
CATEGORIES=	net

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/p5-Net-Daemon
BUILD_DEPENDS=	net/p5-Net-Daemon

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=RPC/}
WRKDIST=	${WRKDIR}/PlRPC

.include <bsd.port.mk>
