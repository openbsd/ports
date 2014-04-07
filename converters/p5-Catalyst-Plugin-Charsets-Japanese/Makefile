# $OpenBSD: Makefile,v 1.8 2014/04/07 14:51:25 sthen Exp $

COMMENT=	jcode interface for catalyst

DISTNAME=	Catalyst-Plugin-Charsets-Japanese-0.06
REVISION=	1
CATEGORIES=	converters www
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	converters/p5-Jcode \
		www/p5-Catalyst-Runtime

TEST_DEPENDS=	devel/p5-Test-Pod

.include <bsd.port.mk>
