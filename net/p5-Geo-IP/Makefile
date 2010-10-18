# $OpenBSD: Makefile,v 1.17 2010/10/18 18:36:51 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	look up country by IP address/hostname

MODULES=	cpan
DISTNAME=	Geo-IP-1.38
REVISION=	0
CATEGORIES=	net geo
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	GeoIP.>=4::net/GeoIP

CONFIGURE_ARGS= LIBS='-L${LOCALBASE}/lib' INC='-I${LOCALBASE}/include'

.include <bsd.port.mk>
