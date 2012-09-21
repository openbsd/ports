# $OpenBSD: Makefile,v 1.6 2012/09/21 14:48:06 ajacoutot Exp $

COMMENT=		flexible communications framework, farstream component

DISTNAME=		telepathy-farstream-0.4.0

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/Farstream

SHARED_LIBS +=  telepathy-farstream       0.0 # 2.1

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-farstream/}

WANTLIB += dbus-1 dbus-glib-1 farstream-0.1 ffi gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gstbase-0.10 gstreamer-0.10
WANTLIB += gthread-2.0 m pcre telepathy-glib xml2 z

MODULES=		devel/gettext \
			lang/python

LIB_DEPENDS=		net/farstream \
			net/telepathy/telepathy-glib>=0.17.5

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-python

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>
