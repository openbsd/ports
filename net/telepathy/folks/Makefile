# $OpenBSD: Makefile,v 1.16 2011/09/21 13:32:40 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.6.3

SHARED_LIBS +=  folks-telepathy           3.0 # 27.0
SHARED_LIBS +=  folks                     3.0 # 27.0

HOMEPAGE=		${HOMEPAGE_TP:=Folks}

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ORBit-2 c dbus-1 dbus-glib-1 gconf-2 gee gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m ncurses pcre
WANTLIB += pthread readline telepathy-glib xml2 z

LIB_DEPENDS=		devel/gconf2 \
			devel/libgee \
			net/telepathy/telepathy-glib>=0.14.3 \
			textproc/libxml
REGRESS_DEPENDS=	${FULLPKGNAME}:${BASE_PKGPATH}

MODGNOME_TOOLS= 	goi vala

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-import-tool \
			--enable-inspect-tool \
# Not yet until libsocialweb is stable
CONFIGURE_ARGS+=	--enable-libsocialweb-backend=no
# Not yet until e-d-s' vala bindings are stable
CONFIGURE_ARGS+=	--disable-eds-backend

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
