# $OpenBSD: Makefile,v 1.51 2013/03/11 10:50:01 espie Exp $

COMMENT=	accessibility toolkit used by gtk+

GNOME_PROJECT=	atk
GNOME_VERSION=	2.6.0

SHARED_LIBS +=	atk-1.0          20600.1   # 20609.1

CATEGORIES=	devel

HOMEPAGE=	http://www.gnome.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi glib-2.0 gobject-2.0 gthread-2.0 pcre pthread

MODULES=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS= goi

LIB_DEPENDS=	devel/glib2>=2.33.14

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
