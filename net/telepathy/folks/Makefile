# $OpenBSD: Makefile,v 1.56 2013/06/10 09:37:27 jasper Exp $

COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.9.2
# MODULE_VERSION in config.h
API_V=			39

SHARED_LIBS +=  folks-telepathy           5.0 # 39.0
SHARED_LIBS +=  folks                     5.2 # 39.0
SHARED_LIBS +=  folks-eds                 1.1 # 39.0
SHARED_LIBS +=  folks-libsocialweb        0.0 # 39.0

SUBST_VARS=		API_V

HOMEPAGE=		${HOMEPAGE_TP:=Folks}

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

WANTLIB += asn1 c camel-1.2 com_err crypto db dbus-1 dbus-glib-1
WANTLIB += ebackend-1.2 ebook-1.2 ebook-contacts-1.2 edata-book-1.2
WANTLIB += edataserver-1.2 ffi gck-1 gcr-base-3 gcrypt gee-0.8 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpg-error gssapi gthread-2.0
WANTLIB += krb5 m ncurses nspr4 nss3 nssutil3 p11-kit pcre plc4
WANTLIB += plds4 pthread readline secret-1 smime3 socialweb-client
WANTLIB += softokn3 soup-2.4 sqlite3 ssl3 telepathy-glib xml2
WANTLIB += z zeitgeist-1.0

LIB_DEPENDS=	databases/evolution-data-server>=3.8.1 \
		devel/libgee \
		net/telepathy/telepathy-glib>=0.20.1 \
		net/libsocialweb \
		productivity/libzeitgeist
RUN_DEPENDS=	net/telepathy/telepathy-mission-control

TEST_DEPENDS=	${FULLPKGNAME}:${BASE_PKGPATH}

MODGNOME_TOOLS= 	gi vala

CONFIGURE_ARGS+=	--enable-import-tool \
			--enable-inspect-tool
# libofono isn't ported yet
CONFIGURE_ARGS= 	--disable-ofono-backend

post-install:
	rm ${PREFIX}/lib/folks/${API_V}/backends/*/*.{a,la}

.include <bsd.port.mk>
