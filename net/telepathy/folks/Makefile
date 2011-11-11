# $OpenBSD: Makefile,v 1.26 2011/11/11 17:07:46 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.6.5
API_V=			29

SHARED_LIBS +=  folks-telepathy           5.0 # 29.0
SHARED_LIBS +=  folks                     5.0 # 29.0
SHARED_LIBS +=  folks-eds                 0.1 # 29.0

HOMEPAGE=		${HOMEPAGE_TP:=Folks}

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += asn1 c camel-1.2 com_err crypto dbus-1 dbus-glib-1
WANTLIB += ebook-1.2 edataserver-1.2 ffi gconf-2 gee gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gssapi gthread-2.0 krb5 m ncurses
WANTLIB += nspr4 nss3 nssutil3 pcre plc4 plds4 pthread readline
WANTLIB += smime3 softokn3 soup-2.4 sqlite3 ssl3 telepathy-glib
WANTLIB += xml2 z

LIB_DEPENDS=		databases/evolution-data-server>=3.2.0p2 \
			devel/libgee \
			net/telepathy/telepathy-glib>=0.14.3
RUN_DEPENDS=		net/telepathy/telepathy-mission-control
REGRESS_DEPENDS=	${FULLPKGNAME}:${BASE_PKGPATH}

MODGNOME_TOOLS= 	goi vala

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-import-tool \
			--enable-inspect-tool \
			--disable-tracker-backend
# Don't enable this yet untill it's stable enough.
CONFIGURE_ARGS+=	--enable-libsocialweb-backend=no
# Experimental bindings, but hey, without testing they'll never mature.
CONFIGURE_ARGS+=	--enable-eds-backend

SUBST_VARS+=		API_V

.include <bsd.port.mk>
