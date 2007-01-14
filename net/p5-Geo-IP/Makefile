# $OpenBSD: Makefile,v 1.5 2007/01/14 20:49:05 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"find the country where an IP address/hostname originates from"

MODULES=	cpan
DISTNAME=	Geo-IP-1.27
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net geo

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	GeoIP.>=4::net/GeoIP

CONFIGURE_ARGS= LIBS='-L${LOCALBASE}/lib' INC='-I${LOCALBASE}/include'

.include <bsd.port.mk>
