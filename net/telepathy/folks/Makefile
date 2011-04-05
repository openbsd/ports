# $OpenBSD: Makefile,v 1.7 2011/04/05 19:46:27 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.4.2

SHARED_LIBS +=  folks-telepathy           1.0 # 22.0
SHARED_LIBS +=  folks                     1.0 # 22.0

HOMEPAGE=		${HOMEPAGE_TP:=Folks}

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += c dbus-1 dbus-glib-1 gee gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m ncurses pcre pthread readline
WANTLIB += telepathy-glib xml2 z

BUILD_DEPENDS=		devel/gobject-introspection>=0.9.12p0 \
			lang/vala>=0.12.0
LIB_DEPENDS=		devel/libgee \
			STEM->=0.14.3:net/telepathy/telepathy-glib \
			textproc/libxml
REGRESS_DEPENDS=	${FULLPKGNAME}:${BASE_PKGPATH}

FAKE_FLAGS+=		itlocaledir=${PREFIX}/share/locale/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-import-tool \
			--enable-inspect-tool \
			--enable-vala
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
