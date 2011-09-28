# $OpenBSD: Makefile,v 1.45 2011/09/28 09:51:35 jasper Exp $

COMMENT=	accessibility toolkit used by gtk+

GNOME_PROJECT=	atk
GNOME_VERSION=	2.2.0

SHARED_LIBS +=	atk-1.0          2801.0   # 20209.1

CATEGORIES=	devel

HOMEPAGE=	http://www.gnome.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += pcre glib-2.0 gobject-2.0 gthread-2.0 ffi

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS= goi

LIB_DEPENDS=	devel/glib2>=2.29.92

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
