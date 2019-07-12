# $OpenBSD: Makefile,v 1.34 2019/07/12 20:48:36 sthen Exp $

COMMENT=	look up country by IP address/hostname

MODULES=	cpan
DISTNAME =	Geo-IP-1.51
CPAN_AUTHOR=	MAXMIND
CATEGORIES=	net geo

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += GeoIP>=8 c perl

LIB_DEPENDS=	net/GeoIP>=1.4.8

CONFIGURE_ARGS= LIBS='-L${LOCALBASE}/lib' INC='-I${LOCALBASE}/include'

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

pre-patch:
	perl -pi -e 's,/usr/local/share/GeoIP,${LOCALSTATEDIR}/db/GeoIP,g' \
	    ${WRKSRC}/lib/Geo/IP.pm ${WRKSRC}/example/*.pl

.include <bsd.port.mk>
