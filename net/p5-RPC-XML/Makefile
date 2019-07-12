# $OpenBSD: Makefile,v 1.17 2019/07/12 20:48:41 sthen Exp $

COMMENT=	perl implementation of XML-RPC

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	RPC-XML-0.80
CATEGORIES=	net devel

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		www/p5-libwww \
			textproc/p5-XML-Parser
TEST_DEPENDS=		devel/p5-DateTime-Format-ISO8601 \
			devel/p5-Net-Server \
			devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
