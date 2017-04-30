# $OpenBSD: Makefile,v 1.16 2017/04/30 13:23:09 benoit Exp $

COMMENT=	perl implementation of XML-RPC

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	RPC-XML-0.80
CATEGORIES=	net devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-libwww \
			textproc/p5-XML-Parser
TEST_DEPENDS=		devel/p5-DateTime-Format-ISO8601 \
			devel/p5-Net-Server \
			devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
