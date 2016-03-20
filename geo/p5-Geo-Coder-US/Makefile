# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:42 naddy Exp $

COMMENT=	geocode any US address
MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Geo-Coder-US-1.00
REVISION=	1
CATEGORIES=	geo

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	geo/p5-Geo-Fips55 \
		geo/p5-Geo-StreetAddress-US \
		geo/p5-Geo-TigerLine

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
