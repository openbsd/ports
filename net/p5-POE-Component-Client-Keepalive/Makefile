# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:56 naddy Exp $

COMMENT=	manage connections, with keep-alive

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-Component-Client-Keepalive-0.25
REVISION=	1
EPOCH=		0
CATEGORIES=	net

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-POE-Component-Client-DNS

.include <bsd.port.mk>
