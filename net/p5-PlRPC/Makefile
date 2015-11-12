# $OpenBSD: Makefile,v 1.25 2015/11/12 14:27:17 ajacoutot Exp $

COMMENT=	module for writing rpc servers and clients

MODULES=	cpan
DISTNAME=	PlRPC-0.2020
CATEGORIES=	net

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	net/p5-Net-Daemon
BUILD_DEPENDS=	net/p5-Net-Daemon

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=RPC/}
WRKDIST=	${WRKDIR}/PlRPC

.include <bsd.port.mk>
