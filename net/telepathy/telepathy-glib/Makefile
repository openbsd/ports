# $OpenBSD: Makefile,v 1.51 2013/09/26 12:33:59 jasper Exp $

COMMENT=		flexible communications framework, glib bindings

DISTNAME=		telepathy-glib-0.20.4

SHARED_LIBS +=	telepathy-glib       78.1      # 78.4

HOMEPAGE=		${HOMEPAGE_TP:=Telepathy GLib}

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-glib/}

WANTLIB += dbus-1 ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += dbus-glib-1 pcre z pthread

MODULES=		devel/gettext \
			lang/python

MODPY_RUNDEP=           No
MODPY_ADJ_FILES=	tests/all-errors-documented.py

BUILD_DEPENDS=		devel/gobject-introspection>=1.30.0 \
			lang/vala \
			textproc/libxslt
LIB_DEPENDS=		x11/dbus-glib

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection \
			--enable-vala-bindings
#CONFIGURE_ARGS+=	--enable-backtrace (add -llibexecinfo)

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>
