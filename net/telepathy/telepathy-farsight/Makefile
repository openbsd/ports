# $OpenBSD: Makefile,v 1.20 2011/09/16 20:00:46 jasper Exp $

COMMENT=		flexible communications framework, farsight2 component

DISTNAME=		telepathy-farsight-0.0.18
REVISION=		0

HOMEPAGE=		${HOMEPAGE_TP:=Telepathy-Farsight}

SHARED_LIBS +=  telepathy-farsight   1.0      # .1.5

MASTER_SITES=		${MASTER_SITES_TP:=telepathy-farsight/}

WANTLIB += dbus-1 dbus-glib-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstbase-0.10 gstreamer-0.10 gthread-2.0
WANTLIB += m pcre util xml2 z gstfarsight-0.10 telepathy-glib>=8
WANTLIB += ${MODPY_WANTLIB}

MODULES=		devel/gettext \
			lang/python

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			net/farsight2>=0.0.28 \
			net/telepathy/telepathy-glib>=0.14.3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-gtk-doc=no
CONFIGURE_ENV+=		ac_cv_prog_PYTHON="${MODPY_BIN}"

pre-configure:
	@ln -s ${LOCALBASE}/bin/python${MODPY_VERSION}-config \
		${WRKDIR}/bin/python-config

.include <bsd.port.mk>
