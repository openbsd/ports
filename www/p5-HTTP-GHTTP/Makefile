# $OpenBSD: Makefile,v 1.11 2007/01/16 17:52:07 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface to the Gnome GHTTP library"

MODULES=	cpan
DISTNAME=	HTTP-GHTTP-1.07
CATEGORIES=	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	ghttp.>=1::www/libghttp

.include <bsd.port.mk>
