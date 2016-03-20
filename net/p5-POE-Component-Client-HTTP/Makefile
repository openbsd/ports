# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:56 naddy Exp $

COMMENT=	POE HTTP user-agent component

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-Component-Client-HTTP-0.88
REVISION=	1
CATEGORIES=	net www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-POE-Component-Client-Keepalive>=0.25 \
		www/p5-URI \
		www/p5-libwww

TEST_DEPENDS=devel/p5-Test-POE-Server-TCP

.include <bsd.port.mk>
