# $OpenBSD: Makefile,v 1.67 2014/04/01 18:06:30 jasper Exp $

COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.9.6
# MODULE_VERSION in config.h
API_V=			41
REVISION=		1

SHARED_LIBS +=  folks-telepathy           5.1 # 41.1
SHARED_LIBS +=  folks                     5.4 # 41.1
SHARED_LIBS +=  folks-eds                 1.1 # 41.1

SUBST_VARS=		API_V

HOMEPAGE=		${HOMEPAGE_TP:=Folks}

WANTLIB += asn1 c camel-1.2 com_err crypto db dbus-1 dbus-glib-1
WANTLIB += ebackend-1.2 ebook-1.2 ebook-contacts-1.2 edata-book-1.2
WANTLIB += edataserver-1.2 ffi gck-1 gcr-base-3 gcrypt gee-0.8
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gssapi gthread-2.0 heimbase krb5 m ncurses nspr4 nss3
WANTLIB += nssutil3 p11-kit pcre plc4 plds4 pthread readline roken
WANTLIB += secret-1 smime3 softokn3 soup-2.4 sqlite3 ssl3 telepathy-glib
WANTLIB += wind xml2 z zeitgeist-2.0 icudata icui18n icuuc

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

MODGNOME_TOOLS += 	gobject-introspection vala

# requires libofono (not ported)
CONFIGURE_ARGS += 	--disable-ofono-backend

# no Bluez stack on OpenBSD
CONFIGURE_ARGS +=	--disable-bluez-backend

# https://git.gnome.org/browse/folks/commit/Makefile.am?id=8ebe13c457660de380521874a006425083151741
CONFIGURE_ARGS += --disable-fatal-warnings

# XXX our pkg-config(1) does not behave properly
# g-ir-scanner <...> --include=Folks-0.6
# Package folks was not found in the pkg-config search path
MAKE_ENV=	PKG_CONFIG_PATH=${WRKBUILD}/folks

post-install:
	rm ${PREFIX}/lib/folks/${API_V}/backends/*/*.{a,la}

.include <bsd.port.mk>
