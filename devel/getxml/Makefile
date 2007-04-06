# $OpenBSD: Makefile,v 1.5 2007/04/06 05:42:26 steven Exp $

COMMENT=	"XML internationalization tool"

DISTNAME=	getxml-1.0.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

HOMEPAGE=	http://www.gnu.org/software/toutdoux/en/index.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

MASTER_SITES=	${MASTER_SITE_GNU:=toutdoux/}

LIB_DEPENDS=	xml.>=9::textproc/libxml1 \
		glib.>=1::devel/glib

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
