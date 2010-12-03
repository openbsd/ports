# $OpenBSD: Makefile,v 1.20 2010/12/03 11:45:41 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	look up country by IP address/hostname

MODULES=	cpan
DISTNAME=	Geo-IP-1.38
REVISION=	1
CATEGORIES=	net geo
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	net/GeoIP
WANTLIB =	GeoIP>=4

CONFIGURE_ARGS= LIBS='-L${LOCALBASE}/lib' INC='-I${LOCALBASE}/include'

.include <bsd.port.mk>
