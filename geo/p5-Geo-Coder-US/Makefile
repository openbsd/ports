# $OpenBSD: Makefile,v 1.6 2013/03/11 11:07:42 espie Exp $

COMMENT=	geocode any US address
MODULES=	cpan
DISTNAME=	Geo-Coder-US-1.00
REVISION=	1
CATEGORIES=	geo
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	geo/p5-Geo-Fips55 \
		geo/p5-Geo-StreetAddress-US \
		geo/p5-Geo-TigerLine

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
