# $OpenBSD: Makefile,v 1.7 2012/09/28 14:26:56 jasper Exp $

COMMENT=		flexible communications framework, farstream component

DISTNAME=		telepathy-farstream-0.6.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/Farstream

SHARED_LIBS +=  telepathy-farstream       1.0 # 3.0

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-farstream/}

WANTLIB += dbus-1 dbus-glib-1 farstream-0.2 ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstbase-1.0 gstreamer-1.0 gthread-2.0
WANTLIB += m pcre pthread telepathy-glib z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		net/farstream>=0.2.0 \
			net/telepathy/telepathy-glib>=0.19.9

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>
