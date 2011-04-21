# $OpenBSD: Makefile,v 1.14 2011/04/21 07:03:21 ajacoutot Exp $

COMMENT=		send desktop notifications to a notification daemon

GNOME_VERSION=		0.7.2
GNOME_PROJECT=		libnotify

CATEGORIES=		devel

SHARED_LIBS +=	notify             3.0      # .4.0

HOMEPAGE=		http://www.galago-project.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre png pthread z

MODULES=		devel/gettext \
			x11/gnome

# gtk+3 is needed to build the tests
BUILD_DEPENDS=		x11/gtk+3 \
			devel/gobject-introspection

LIB_DEPENDS=		graphics/gdk-pixbuf2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection

.include <bsd.port.mk>
