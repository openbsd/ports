# $OpenBSD: Makefile,v 1.10 2015/11/05 19:08:59 jca Exp $

COMMENT=	manage connections, with keep-alive

MODULES=	cpan
DISTNAME=	POE-Component-Client-Keepalive-0.25
REVISION=	1
EPOCH=		0
CATEGORIES=	net

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-POE-Component-Client-DNS

.include <bsd.port.mk>
