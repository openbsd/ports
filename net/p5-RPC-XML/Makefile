# $OpenBSD: Makefile,v 1.12 2014/12/10 14:36:20 benoit Exp $

COMMENT=	perl implementation of XML-RPC

MODULES=	cpan
DISTNAME=	RPC-XML-0.76
CATEGORIES=	net devel
REVISION =	0

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-libwww \
			textproc/p5-XML-Parser
TEST_DEPENDS=	www/mod_perl \
			devel/p5-DateTime-Format-ISO8601 \
			devel/p5-Net-Server \
			devel/p5-Test-Pod \
			devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
