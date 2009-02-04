# $OpenBSD: Makefile,v 1.13 2009/02/04 10:16:17 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	look up country by IP address/hostname

MODULES=	cpan
DISTNAME=	Geo-IP-1.36
CATEGORIES=	net geo

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	GeoIP.>=4::net/GeoIP

CONFIGURE_ARGS= LIBS='-L${LOCALBASE}/lib' INC='-I${LOCALBASE}/include'

.include <bsd.port.mk>
