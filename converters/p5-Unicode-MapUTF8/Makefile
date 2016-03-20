# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:08 naddy Exp $

COMMENT=	conversions to and from arbitrary character sets and UTF8

DISTNAME=	Unicode-MapUTF8-1.11
REVISION=	2
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	converters/p5-Jcode \
		converters/p5-Unicode-Map \
		converters/p5-Unicode-Map8

.include <bsd.port.mk>
