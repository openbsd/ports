# $OpenBSD: Makefile,v 1.104 2015/06/13 13:16:23 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		GNOME Data Access library
COMMENT-ldap=		LDAP backend for libgda
COMMENT-mysql=		MySQL backend for libgda
COMMENT-pgsql=		PostgreSQL backend for libgda
COMMENT-ui=		GTK+ extension and tools for libgda

GNOME_PROJECT=		libgda
GNOME_VERSION=		5.2.4

GDA_MAJOR=		5.0
SUBST_VARS=		GDA_MAJOR

PKGNAME-main=		${DISTNAME}
PKGNAME-ldap=		libgda-ldap-${GNOME_VERSION}
PKGNAME-mysql=		libgda-mysql-${GNOME_VERSION}
PKGNAME-pgsql=		libgda-pgsql-${GNOME_VERSION}
PKGNAME-ui=		libgda-ui-${GNOME_VERSION}

EPOCH-main=		2
EPOCH-ldap=		0
EPOCH-mysql=		0
EPOCH-pgsql=		0

CATEGORIES=		databases

SHARED_LIBS +=  gda-5.0              1.0      # 5.1
SHARED_LIBS +=  gdadata-5.0          0.0      # unknown
SHARED_LIBS +=  gda-report-5.0       1.0      # 5.1
SHARED_LIBS +=  gda-xslt-5.0         1.0      # 5.1
SHARED_LIBS +=  gda-ui-5.0           1.0      # 5.1

HOMEPAGE=		http://www.gnome-db.org/

# library: LGPLv2
# tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pcre z gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 lzma
WANTLIB += gthread-2.0 xml2 gcrypt secret-1 gpg-error ffi pthread

# /libgda-5.1.2_writes_to_HOME/.cache/g-ir-scanner
PORTHOME=		${WRKDIST}

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_LDFLAGS=	-lm
MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

LIBTOOL_FLAGS=		--tag=disable-static

BUILD_DEPENDS=		databases/db/v4 \
			devel/iso-codes

TEST_DEPENDS=		devel/check

CONFIGURE_ARGS=		--enable-system-sqlite \
			--enable-gdaui-gi \
			--enable-gdaui-vala \
			--enable-vala-extensions \
			--with-bdb-includedir-name=include/db4 \
			--without-firebird \
			--without-oracle \
			--without-mdb \
			--without-java \
			--without-graphviz \
			--with-ui \
			--with-ldap \
			--with-mysql="${LOCALBASE}" \
			--with-postgres="${LOCALBASE}"

# XXX sync with API_V in lang/vala
CONFIGURE_ENV +=	VALA_API_VERSION=0.28

FAKE_FLAGS=		configdir="${PREFIX}/share/examples/libgda"

MULTI_PACKAGES=		-main -ui -mysql -pgsql -ldap

### -main
WANTLIB-main += ${WANTLIB}
WANTLIB-main += c gcrypt gpg-error ncurses sqlite3 gee-0.8
WANTLIB-main += readline soup-2.4 crypto gdk_pixbuf-2.0 png xslt

RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			devel/libgee \
			devel/libsoup \
			textproc/libxslt \
			graphics/gdk-pixbuf2 \
			x11/gnome/libsecret

### -ui
WANTLIB-ui += ${WANTLIB}
WANTLIB-ui += X11 Xcomposite Xcursor Xdamage Xext Xfixes graphite2
WANTLIB-ui += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB-ui += cairo-gobject expat fontconfig freetype gda-${GDA_MAJOR}
WANTLIB-ui += gdk-3 gdk_pixbuf-2.0 goocanvas-2.0 gtk-3 gtksourceview-3.0
WANTLIB-ui += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB-ui += pthread-stubs xcb xcb-render xcb-shm epoxy
WANTLIB-ui += ICE SM atk-bridge-2.0 atspi harfbuzz dbus-1

LIB_DEPENDS-ui=		${MODGETTEXT_LIB_DEPENDS} \
			graphics/goocanvas2 \
			x11/dbus \
			x11/gnome/libgda \
			x11/gtksourceview3
RUN_DEPENDS-ui=		${RUN_DEPENDS} \
			devel/iso-codes

### -mysql
WANTLIB-mysql += ${WANTLIB}
WANTLIB-mysql += crypto gda-${GDA_MAJOR} mysqlclient ssl stdc++

LIB_DEPENDS-mysql=	${MODGETTEXT_LIB_DEPENDS} \
			x11/gnome/libgda \
			databases/mariadb

RUN_DEPENDS-mysql=	${MODGETTEXT_RUN_DEPENDS}

### pgsql
WANTLIB-pgsql += ${WANTLIB}
WANTLIB-pgsql += gda-${GDA_MAJOR} pq crypto ssl

LIB_DEPENDS-pgsql=	${MODGETTEXT_LIB_DEPENDS} \
			x11/gnome/libgda \
			databases/postgresql

RUN_DEPENDS-pgsql=	${MODGETTEXT_RUN_DEPENDS}

### -ldap
WANTLIB-ldap += ${WANTLIB}
WANTLIB-ldap += crypto gda-${GDA_MAJOR} lber-2.4 ldap-2.4 sasl2 ssl

LIB_DEPENDS-ldap=	${MODGETTEXT_LIB_DEPENDS} \
			x11/gnome/libgda \
			databases/openldap

RUN_DEPENDS-ldap=	${MODGETTEXT_RUN_DEPENDS}

# XXX sync with LIBdb_VERSION in databases/db/v4
# (find a proper way to push upstream)
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf no-autoheader
post-patch:
	perl -pi -e 's,bdb_libext="\$$linklibext",bdb_libext=".so.5.0",' ${WRKSRC}/m4/bdb.m4

post-install:
	rm ${PREFIX}/lib/libgda-${GDA_MAJOR}/{plugins,providers}/*.la

.include <bsd.port.mk>
