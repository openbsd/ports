# $OpenBSD: Makefile,v 1.41 2011/07/29 20:42:26 jasper Exp $

SHARED_ONLY=		Yes

COMMENT-main=		GNOME Data Access library
COMMENT-ldap=		LDAP backend for libgda
COMMENT-mdb=		MS Access MDB backend for libgda
COMMENT-mysql=		MySQL backend for libgda
COMMENT-pgsql=		PostreSQL backend for libgda
COMMENT-ui=		GTK+ extension and tools for libgda

GNOME_PROJECT=		libgda
GNOME_VERSION=		4.2.8

# NOTE: when major version changes, increment GDA_MAJOR accordingly and
# bump "x11/gnome/libgdamm"
GDA_MAJOR=		4.0

PKGNAME-main=		${DISTNAME}
PKGNAME-ldap=		libgda-ldap-${GNOME_VERSION}
PKGNAME-mdb=		libgda-mdb-${GNOME_VERSION}
PKGNAME-mysql=		libgda-mysql-${GNOME_VERSION}
PKGNAME-pgsql=		libgda-pgsql-${GNOME_VERSION}
PKGNAME-ui=		libgda-ui-${GNOME_VERSION}

REVISION-main=		1
REVISION-ui=		2
REVISION-pgsql=		0

EPOCH-main=		2
EPOCH-ldap=		0
EPOCH-mdb=		0
EPOCH-mysql=		0
EPOCH-pgsql=		0

CATEGORIES=		databases

SHARED_LIBS +=  gda-4.0               1.0        # 5.0
SHARED_LIBS +=  gda-report-4.0        1.0        # 5.0
SHARED_LIBS +=  gda-xslt-4.0          1.0	 # 5.0
SHARED_LIBS +=  gda-ui-4.0            0.0        # 5.0

HOMEPAGE=		http://www.gnome-db.org/

# library: LGPLv2
# tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += m pcre z gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 xml2 dbus-1 gcrypt gnome-keyring
WANTLIB += gpg-error

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

SUBST_VARS=		GDA_MAJOR

# no no_ldap PSEUDO_FLAVOR because we need the headers in -main
# since some are referenced by other headers
PSEUDO_FLAVORS=		no_mdb no_mysql no_pgsql no_ui
FLAVOR?=

MULTI_PACKAGES=		-main

LIB_DEPENDS=		devel/glib2 \
			textproc/libxml

BUILD_DEPENDS=		databases/db/v4 \
			databases/sqlite3 \
			devel/gobject-introspection

REGRESS_DEPENDS=	devel/check

LIBTOOL_FLAGS=		--tag=disable-static
USE_GROFF =		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-static \
			--disable-gtk-doc \
			--enable-introspection \
			--enable-system-sqlite \
			--with-bdb="${LOCALBASE}" \
			--without-firebird \
			--without-oracle \
			--with-java=no
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4/" \
			LDFLAGS="-L${LOCALBASE}/lib -lm" \
			LIBCRYPTO_CFLAGS="-I/usr/include/ssl" \
			LIBCRYPTO_LIBS="-lcrypto" \
			MYSQL_CONFIG="${LOCALBASE}/bin/mysql_config"

FAKE_FLAGS=		configdir="${PREFIX}/share/examples/libgda"

WANTLIB-main += ${WANTLIB} c gcrypt gpg-error ncurses pthread png
WANTLIB-main += readline soup-2.4 xslt crypto gdk_pixbuf-2.0

RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/libsoup \
			textproc/libxslt \
			x11/gnome/libgnome-keyring \
			graphics/gdk-pixbuf2 \
			x11/dbus

.if ${FLAVOR:L:Mno_ui}
CONFIGURE_ARGS+=	--without-ui
.else
MULTI_PACKAGES+=	-ui
CONFIGURE_ARGS+=	--with-ui
WANTLIB-ui += ${WANTLIB} c gcrypt gpg-error pthread gda-${GDA_MAJOR}
WANTLIB-ui += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-ui += Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 dbus-glib-1
WANTLIB-ui += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-ui += gtk-x11-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-ui += pixman-1 png pthread-stubs xcb xcb-render
WANTLIB-ui += gnome-keyring goocanvas graph gtksourceview-2.0
WANTLIB-ui += gvc ltdl pathplan unique-1.0 cdt gpg-error unique-1.0
WANTLIB-ui += GL Xxf86vm drm xcb-shm
LIB_DEPENDS-ui=		${LIB_DEPENDS} \
			x11/gnome/libgda \
			math/graphviz \
			x11/gtksourceview \
			graphics/goocanvas \
			devel/libunique
.endif


.if ${FLAVOR:L:Mno_mdb}
CONFIGURE_ARGS+=	--without-mdb
.else
RUN_DEPENDS-mdb=	${MODGETTEXT_RUN_DEPENDS}
MULTI_PACKAGES+=	-mdb
WANTLIB-mdb=		${WANTLIB} gda-${GDA_MAJOR} mdb
LIB_DEPENDS-mdb=	${LIB_DEPENDS} \
			x11/gnome/libgda \
			databases/mdbtools/snapshot
CONFIGURE_ARGS+=	--with-mdb="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_mysql}
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

.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-postgres
.else
RUN_DEPENDS-pgsql=	${MODGETTEXT_RUN_DEPENDS}
MULTI_PACKAGES+=	-pgsql
WANTLIB-pgsql=		${WANTLIB} gda-${GDA_MAJOR} pq com_err crypto ssl
LIB_DEPENDS-pgsql=	${LIB_DEPENDS} \
			x11/gnome/libgda \
			databases/postgresql
CONFIGURE_ARGS+=	--with-postgres="${LOCALBASE}"
.endif

# ldap (no PSEUDO_FLAVORS, see above)
RUN_DEPENDS-ldap=	${MODGETTEXT_RUN_DEPENDS}
MULTI_PACKAGES+=	-ldap
WANTLIB-ldap=		${WANTLIB} crypto gda-4.0 gssapi krb5 lber-2.4 \
			ldap-2.4 sasl2 ssl
LIB_DEPENDS-ldap=	x11/gnome/libgda \
			databases/openldap
CONFIGURE_ARGS+=	--with-ldap

.include <bsd.port.mk>
