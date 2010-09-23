# $OpenBSD: Makefile,v 1.8 2010/09/23 14:19:10 jasper Exp $

COMMENT=		flexible communications framework, farsight2 component

DISTNAME=		telepathy-farsight-0.0.15

SHARED_LIBS +=  telepathy-farsight   0.0      # .0.4

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-farsight/}

WANTLIB += dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstbase-0.10 gstreamer-0.10 gthread-2.0
WANTLIB += m pcre util xml2 z gstfarsight-0.10 telepathy-glib

MODULES=		devel/gettext \
			lang/python

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			::net/farsight2 \
			::net/telepathy/telepathy-glib

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-gtk-doc=no \
			--disable-silent-rules

pre-configure:
	@ln -s ${LOCALBASE}/bin/python${MODPY_VERSION}-config \
		${WRKDIR}/bin/python-config


.include <bsd.port.mk>
