# $OpenBSD: Makefile,v 1.6 2007/04/12 18:59:36 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	"find the country where an IP address/hostname originates from"

MODULES=	cpan
DISTNAME=	Geo-IP-1.27
PKGNAME=	p5-${DISTNAME}p0
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
