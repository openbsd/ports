# $OpenBSD: Makefile,v 1.88 2014/03/09 22:18:08 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		GNOME Data Access library
COMMENT-ldap=		LDAP backend for libgda
COMMENT-mysql=		MySQL backend for libgda
COMMENT-pgsql=		PostreSQL backend for libgda
COMMENT-ui=		GTK+ extension and tools for libgda

GNOME_PROJECT=		libgda
GNOME_VERSION=		5.2.2

GDA_MAJOR=		5.0
SUBST_VARS=		GDA_MAJOR

PKGNAME-main=		${DISTNAME}
PKGNAME-ldap=		libgda-ldap-${GNOME_VERSION}
PKGNAME-mysql=		libgda-mysql-${GNOME_VERSION}
PKGNAME-pgsql=		libgda-pgsql-${GNOME_VERSION}
PKGNAME-ui=		libgda-ui-${GNOME_VERSION}

REVISION-main=		0

EPOCH-main=		2
EPOCH-ldap=		0
EPOCH-mysql=		0
EPOCH-pgsql=		0

CATEGORIES=		databases

SHARED_LIBS +=  gda-5.0                   1.0 # 5.1
SHARED_LIBS +=  gda-report-5.0            1.0 # 5.1
SHARED_LIBS +=  gda-ui-5.0                1.0 # 5.1
SHARED_LIBS +=  gda-xslt-5.0              1.0 # 5.1

HOMEPAGE=		http://www.gnome-db.org/

# library: LGPLv2
# tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pcre z gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 xml2 gcrypt secret-1 gpg-error ffi pthread

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

# /libgda-5.1.2_writes_to_HOME/.cache/g-ir-scanner
PORTHOME=		${WRKDIST}

# no no_ldap PSEUDO_FLAVOR because we need the headers in -main
# since some are referenced by other headers
PSEUDO_FLAVORS=		no_mysql no_pgsql no_ui
FLAVOR?=

MULTI_PACKAGES=		-main

LIB_DEPENDS=		devel/glib2 \
			textproc/libxml \
			x11/gnome/libsecret

BUILD_DEPENDS=		databases/db/v4 \
			devel/iso-codes

TEST_DEPENDS=	devel/check

MODGNOME_TOOLS= 	gi yelp

LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_ARGS+=	--disable-static \
			--enable-system-sqlite \
			--enable-gdaui-gi \
			--enable-gdaui-vala \
			--enable-vala-extensions \
			--with-bdb-includedir-name=include/db4 \
			--without-firebird \
			--without-oracle \
			--without-mdb \
			--without-java
# XXX: Re-enable when libgda can handle vala 0.20.0
# and add 'vala' back to MODGNOME_TOOLS; LIB_DEPENDS on libgee
CONFIGURE_ARGS+=	--disable-vala-extensions \
			--disable-gdaui-vala \
			--disable-vala

MODGNOME_LDFLAGS=	-lm
CONFIGURE_ENV=		LIBCRYPTO_CFLAGS="-I/usr/include/ssl" \
			LIBCRYPTO_LIBS="-lcrypto" \
			MYSQL_CONFIG="${LOCALBASE}/bin/mysql_config"

FAKE_FLAGS=		configdir="${PREFIX}/share/examples/libgda"

WANTLIB-main += ${WANTLIB} c gcrypt gpg-error ncurses sqlite3
WANTLIB-main += readline soup-2.4 crypto gdk_pixbuf-2.0 png xslt

RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS} \
			devel/iso-codes
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/libsoup \
			textproc/libxslt \
			graphics/gdk-pixbuf2

.if ${FLAVOR:Mno_ui}
CONFIGURE_ARGS+=	--without-ui
.else
MULTI_PACKAGES+=	-ui
CONFIGURE_ARGS+=	--with-ui
# XXX graphviz depends on deprecated libgnomeui
CONFIGURE_ARGS+=	--with-graphviz=no
WANTLIB-ui += ${WANTLIB}
WANTLIB-ui += X11 Xcomposite Xcursor Xdamage Xext Xfixes graphite2
WANTLIB-ui += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB-ui += cairo-gobject expat fontconfig freetype gda-${GDA_MAJOR}
WANTLIB-ui += gdk-3 gdk_pixbuf-2.0 goocanvas-2.0 gtk-3 gtksourceview-3.0
WANTLIB-ui += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB-ui += pthread-stubs xcb xcb-render xcb-shm
WANTLIB-ui += ICE SM atk-bridge-2.0 atspi harfbuzz dbus-1
LIB_DEPENDS-ui=		${LIB_DEPENDS} \
			graphics/goocanvas2 \
			x11/dbus \
			x11/gnome/libgda \
			x11/gtksourceview3
.endif

.if ${FLAVOR:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
RUN_DEPENDS-mysql=	${MODGETTEXT_RUN_DEPENDS}
MULTI_PACKAGES+=	-mysql
WANTLIB-mysql=		${WANTLIB} crypto ssl gda-${GDA_MAJOR} \
			mysqlclient
LIB_DEPENDS-mysql=	${LIB_DEPENDS} \
			x11/gnome/libgda \
			databases/mysql
CONFIGURE_ARGS+=	--with-mysql="${LOCALBASE}"
.endif

.if ${FLAVOR:Mno_pgsql}
CONFIGURE_ARGS+=	--without-postgres
.else
RUN_DEPENDS-pgsql=	${MODGETTEXT_RUN_DEPENDS}
MULTI_PACKAGES+=	-pgsql
WANTLIB-pgsql=		${WANTLIB} gda-${GDA_MAJOR} pq com_err crypto ssl \
			asn1 heimbase krb5 roken wind
LIB_DEPENDS-pgsql=	${LIB_DEPENDS} \
			x11/gnome/libgda \
			databases/postgresql
CONFIGURE_ARGS+=	--with-postgres="${LOCALBASE}"
.endif

# ldap (no PSEUDO_FLAVORS, see above)
RUN_DEPENDS-ldap=	${MODGETTEXT_RUN_DEPENDS}
MULTI_PACKAGES+=	-ldap
WANTLIB-ldap=		${WANTLIB} crypto gda-${GDA_MAJOR} gssapi krb5 lber-2.4 \
			ldap-2.4 sasl2 ssl asn1 com_err heimbase \
			roken wind
LIB_DEPENDS-ldap=	${LIB_DEPENDS} \
			x11/gnome/libgda \
			databases/openldap
CONFIGURE_ARGS+=	--with-ldap

# XXX sync with LIBdb_VERSION in databases/db/v4
# (find a proper way to push upstream)
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf no-autoheader
post-patch:
	perl -pi -e 's,bdb_libext="\$$linklibext",bdb_libext=".so.5.0",' ${WRKSRC}/m4/bdb.m4

post-install:
	rm ${PREFIX}/lib/libgda-${GDA_MAJOR}/{plugins,providers}/*.la

.include <bsd.port.mk>
