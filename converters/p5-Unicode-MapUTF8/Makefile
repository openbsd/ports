# $OpenBSD: Makefile,v 1.17 2019/07/12 20:43:51 sthen Exp $

COMMENT=	conversions to and from arbitrary character sets and UTF8

DISTNAME=	Unicode-MapUTF8-1.11
REVISION=	2
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	converters/p5-Jcode \
		converters/p5-Unicode-Map \
		converters/p5-Unicode-Map8

.include <bsd.port.mk>
