# $OpenBSD: Makefile,v 1.23 2013/10/11 23:51:41 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the GNOME GHTTP library

MODULES=	cpan
DISTNAME=	HTTP-GHTTP-1.07
REVISION=	4
CATEGORIES=	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ghttp>=1

LIB_DEPENDS=	www/libghttp

.include <bsd.port.mk>
