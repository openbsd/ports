# $OpenBSD: Makefile,v 1.19 2020/11/05 08:09:29 benoit Exp $

COMMENT=	conversions to and from arbitrary character sets and UTF8

DISTNAME =	Unicode-MapUTF8-1.14
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*

# MIT
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	converters/p5-Jcode \
		converters/p5-Unicode-Map \
		converters/p5-Unicode-Map8

.include <bsd.port.mk>
