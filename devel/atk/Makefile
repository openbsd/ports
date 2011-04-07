# $OpenBSD: Makefile,v 1.35 2011/04/07 07:15:02 ajacoutot Exp $

COMMENT=	accessibility toolkit used by gtk+

GNOME_PROJECT=	atk
GNOME_VERSION=	2.0.0

REVISION=	0

SHARED_LIBS +=	atk-1.0             2800.1   # 9.1

CATEGORIES=	devel

HOMEPAGE=	http://www.gnome.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += pcre glib-2.0 gobject-2.0 gthread-2.0

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS=	devel/glib2

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--enable-introspection

.include <bsd.port.mk>
