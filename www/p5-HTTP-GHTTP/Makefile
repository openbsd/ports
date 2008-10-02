# $OpenBSD: Makefile,v 1.13 2008/10/02 20:42:37 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the Gnome GHTTP library

MODULES=	cpan
DISTNAME=	HTTP-GHTTP-1.07
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	ghttp.>=1::www/libghttp

.include <bsd.port.mk>
