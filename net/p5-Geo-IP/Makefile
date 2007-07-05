# $OpenBSD: Makefile,v 1.8 2007/07/05 22:20:29 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"look up country by IP address/hostname"

MODULES=	cpan
DISTNAME=	Geo-IP-1.28
CATEGORIES=	net geo

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	GeoIP.>=4::net/GeoIP

CONFIGURE_ARGS= LIBS='-L${LOCALBASE}/lib' INC='-I${LOCALBASE}/include'

.include <bsd.port.mk>
