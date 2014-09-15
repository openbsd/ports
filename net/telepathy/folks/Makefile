# $OpenBSD: Makefile,v 1.75 2014/09/15 08:21:51 jasper Exp $

# XXX: PORTROACH set below to override the value from gnome.port.mk

COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.10.0
# MODULE_VERSION in config.h
API_V=			42

SHARED_LIBS +=  folks-telepathy           5.1 # 42.2
SHARED_LIBS +=  folks                     5.4 # 42.2
SHARED_LIBS +=  folks-eds                 1.1 # 42.2
SHARED_LIBS +=  folks-dummy               0.0 # 42.2

SUBST_VARS=		API_V

HOMEPAGE=		https://wiki.gnome.org/Projects/Folks

WANTLIB += c camel-1.2 db dbus-1 dbus-glib-1 ebackend-1.2 ebook-1.2
WANTLIB += ebook-contacts-1.2 edata-book-1.2 edataserver-1.2 ffi
WANTLIB += gck-1 gcr-base-3 gcrypt gee-0.8 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error gthread-2.0 icudata icui18n icuuc
WANTLIB += m ncurses nspr4 nss3 nssutil3 p11-kit pcre plc4 plds4
WANTLIB += pthread readline secret-1 smime3 softokn3 soup-2.4
WANTLIB += sqlite3 ssl3 telepathy-glib xml2 z zeitgeist-2.0

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=	databases/evolution-data-server \
		devel/libgee \
		net/telepathy/telepathy-glib \
		productivity/zeitgeist

# needed at runtime by the telepathy backend (AccountManager)
RUN_DEPENDS=	net/telepathy/telepathy-mission-control

TEST_DEPENDS=	${FULLPKGNAME}:${BASE_PKGPATH}

MODGNOME_TOOLS += gobject-introspection vala

# requires libofono (not ported)
CONFIGURE_ARGS += 	--disable-ofono-backend

# no Bluez stack on OpenBSD
CONFIGURE_ARGS +=	--disable-bluez-backend

# https://git.gnome.org/browse/folks/commit/Makefile.am?id=8ebe13c457660de380521874a006425083151741
CONFIGURE_ARGS += 	--disable-fatal-warnings

post-install:
	rm ${PREFIX}/lib/folks/${API_V}/backends/*/*.{a,la}

.include <bsd.port.mk>

PORTROACH=	# empty
