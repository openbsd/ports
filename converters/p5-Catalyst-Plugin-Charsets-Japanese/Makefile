# $OpenBSD: Makefile,v 1.12 2020/08/28 11:05:47 cwen Exp $

COMMENT=	jcode interface for catalyst

DISTNAME=	Catalyst-Plugin-Charsets-Japanese-0.06
REVISION=	3
CATEGORIES=	converters www
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	converters/p5-Jcode \
		devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		www/p5-Catalyst-Runtime

TEST_DEPENDS=	devel/p5-Test-Pod \
		devel/p5-Test-WWW-Mechanize-Catalyst

.include <bsd.port.mk>
