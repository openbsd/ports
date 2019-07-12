# $OpenBSD: Makefile,v 1.10 2019/07/12 20:43:49 sthen Exp $

COMMENT=	jcode interface for catalyst

DISTNAME=	Catalyst-Plugin-Charsets-Japanese-0.06
REVISION=	1
CATEGORIES=	converters www
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	converters/p5-Jcode \
		www/p5-Catalyst-Runtime

TEST_DEPENDS=	devel/p5-Test-Pod

.include <bsd.port.mk>
