# $OpenBSD: Makefile,v 1.24 2014/06/14 23:26:03 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the GNOME GHTTP library

MODULES=	cpan
DISTNAME=	HTTP-GHTTP-1.07
REVISION=	5
CATEGORIES=	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ghttp>=1

LIB_DEPENDS=	www/libghttp

.include <bsd.port.mk>
