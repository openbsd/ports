# $OpenBSD: Makefile,v 1.3 2006/08/01 10:50:19 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"find the country where an IP address/hostname originates from"

DISTNAME=	Geo-IP-1.27
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Geo/}

LIB_DEPENDS=	GeoIP.>=4::net/GeoIP

CONFIGURE_STYLE=perl
CONFIGURE_ARGS= LIBS='-L${LOCALBASE}/lib' INC='-I${LOCALBASE}/include'

.include <bsd.port.mk>
