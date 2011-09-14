# $OpenBSD: Makefile,v 1.11 2011/09/14 12:22:58 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.6.2.1

SHARED_LIBS +=  folks-telepathy           2.0 # 25.0
SHARED_LIBS +=  folks                     2.0 # 25.0

HOMEPAGE=		${HOMEPAGE_TP:=Folks}

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ORBit-2 c dbus-1 dbus-glib-1 gconf-2 gee gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m ncurses pcre
WANTLIB += pthread readline telepathy-glib xml2 z

BUILD_DEPENDS=		devel/gobject-introspection>=0.9.12p0 \
			lang/vala>=0.13.4
LIB_DEPENDS=		devel/gconf2 \
			devel/libgee \
			STEM->=0.14.3:net/telepathy/telepathy-glib \
			textproc/libxml
REGRESS_DEPENDS=	${FULLPKGNAME}:${BASE_PKGPATH}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-import-tool \
			--enable-inspect-tool \
			--enable-vala
# Not yet until libsocialweb is stable
CONFIGURE_ARGS+=	--enable-libsocialweb-backend=no
# Not yet until e-d-s' vala bindings are stable
CONFIGURE_ARGS+=	--disable-eds-backend

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
