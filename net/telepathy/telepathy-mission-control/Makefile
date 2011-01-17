# $OpenBSD: Makefile,v 1.24 2011/01/17 17:58:30 jasper Exp $

COMMENT=		abstraction layer between apps and connection managers

DISTNAME=		telepathy-mission-control-5.6.1

SHARED_LIBS +=  mission-control-plugins 0.0      # 3.0

HOMEPAGE=		http://mission-control.sourceforge.net/

MASTER_SITES=		${MASTER_SITES_TELEPATHY:=telepathy-mission-control/}

WANTLIB += c dbus-1 dbus-glib-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 pcre pthread z telepathy-glib

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		textproc/libxslt
LIB_DEPENDS=		net/telepathy/telepathy-glib

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-static \
			--disable-gtk-doc \
			--disable-gnome-keyring \
			--enable-mcclient-so6
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_prog_PYTHON="${MODPY_BIN}"
USE_GROFF =		Yes

.include <bsd.port.mk>
