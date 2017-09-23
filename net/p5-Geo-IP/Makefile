# $OpenBSD: Makefile,v 1.32 2017/09/23 10:51:07 sthen Exp $

COMMENT=	look up country by IP address/hostname

MODULES=	cpan
DISTNAME =	Geo-IP-1.50
CPAN_AUTHOR=	MAXMIND
CATEGORIES=	net geo
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP>=8 c perl

LIB_DEPENDS=	net/GeoIP>=1.4.8

CONFIGURE_ARGS= LIBS='-L${LOCALBASE}/lib' INC='-I${LOCALBASE}/include'

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

pre-patch:
	perl -pi -e 's,/usr/local/share/GeoIP,${LOCALSTATEDIR}/db/GeoIP,g' \
	    ${WRKSRC}/lib/Geo/IP.pm ${WRKSRC}/example/*.pl

.include <bsd.port.mk>
