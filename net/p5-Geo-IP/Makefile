# $OpenBSD: Makefile,v 1.25 2013/03/11 11:35:50 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	look up country by IP address/hostname

MODULES=	cpan
DISTNAME=	Geo-IP-1.40
CPAN_AUTHOR=	BORISZ
CATEGORIES=	net geo

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP>=8

LIB_DEPENDS=	net/GeoIP>=1.4.8

CONFIGURE_ARGS= LIBS='-L${LOCALBASE}/lib' INC='-I${LOCALBASE}/include'

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

.include <bsd.port.mk>
