# $OpenBSD: Makefile,v 1.23 2010/09/27 12:12:41 ajacoutot Exp $

#
# XXX:
# The -ldap and -odbc packages are empty. This is because upstream
# is rewriting them. When they get back, updates will be easier
# with keeping the subpackages for now.

SHARED_ONLY=		Yes

COMMENT-main=		GNOME Data Access library
COMMENT-ui=		GTK+ extension and tools for libgda
COMMENT-ldap=		LDAP backend for libgda
COMMENT-mdb=		MS Access MDB backend for libgda
COMMENT-mysql=		MySQL backend for libgda
COMMENT-pgsql=		PostreSQL backend for libgda
COMMENT-odbc=		ODBC backend for libgda

GNOME_PROJECT=		libgda
GNOME_VERSION=		4.2.0

# NOTE: when major version changes, increment GDA_MAJOR accordingly and
# bump "x11/gnome/libgdamm"
GDA_MAJOR=		4.0

PKGNAME-main=		${DISTNAME}
EPOCH-main=		1
PKGNAME-ui=		libgda-ui-${GNOME_VERSION}
#PKGNAME-ldap=		libgda-ldap-${GNOME_VERSION}
#EPOCH-ldap=		0
PKGNAME-mdb=		libgda-mdb-${GNOME_VERSION}
EPOCH-mdb=		0
PKGNAME-mysql=		libgda-mysql-${GNOME_VERSION}
EPOCH-mysql=		0
PKGNAME-pgsql=		libgda-pgsql-${GNOME_VERSION}
EPOCH-pgsql=		0
#PKGNAME-odbc=		libgda-odbc-${GNOME_VERSION}
#EPOCH-odbc=		0

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
WANTLIB += gthread-2.0 xml2 dbus-1 dbus-glib-1 eggdbus-1 gcrypt
WANTLIB += gnome-keyring gpg-error

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

SUBST_VARS=		GDA_MAJOR

#PSEUDO_FLAVORS=	no_ui no_ldap no_mdb no_mysql no_odbc no_pgsql
PSEUDO_FLAVORS=		no_ui no_mdb no_mysql no_pgsql
FLAVOR?=

MULTI_PACKAGES=		-main

LIB_DEPENDS=		::devel/glib2 \
			::textproc/libxml

BUILD_DEPENDS=		:db->=4,<5:databases/db/v4 \
			::databases/sqlite3

REGRESS_DEPENDS=	::devel/check

LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-static \
			--disable-gtk-doc \
			--disable-introspection \
			--with-bdb="${LOCALBASE}" \
			--without-firebird \
			--without-ibmdb2 \
			--without-oracle \
			--without-sybase \
			--without-xbase
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4/" \
			LDFLAGS="-L${LOCALBASE}/lib -lm"

FAKE_FLAGS=		configdir="${PREFIX}/share/examples/libgda"

WANTLIB-main += ${WANTLIB} c gcrypt gpg-error ncurses pthread
WANTLIB-main += readline tasn1 soup-2.4 gnutls xslt

RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			::devel/libsoup \
			::textproc/libxslt \
			::x11/gnome/libgnome-keyring

.if ${FLAVOR:L:Mno_ui}
CONFIGURE_ARGS+=	--without-ui
.else
MULTI_PACKAGES+=	-ui
CONFIGURE_ARGS+=	--with-ui
WANTLIB-ui += ${WANTLIB} c gcrypt gpg-error pthread gda-${GDA_MAJOR}
WANTLIB-ui += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-ui += Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 dbus-glib-1
WANTLIB-ui += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-ui += glitz gtk-x11-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-ui += pixman-1 png pthread-stubs xcb xcb-render xcb-render-util
WANTLIB-ui += eggdbus-1 gnome-keyring goocanvas graph gtksourceview-2.0
WANTLIB-ui += gvc ltdl pathplan unique-1.0 cdt gpg-error unique-1.0
LIB_DEPENDS-ui=		${LIB_DEPENDS} \
			::x11/gnome/libgda \
			::math/graphviz \
			::x11/gtksourceview \
			::graphics/goocanvas \
			::devel/libunique
.endif


#.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-ldap
#.else
#MULTI_PACKAGES+=	-ldap
#WANTLIB-ldap=		${WANTLIB} asn1 com_err crypto gssapi krb5 sasl2 ssl gda-3.0 ,gdasql-3.0
#WANTLIB-ldap=		lber ldap
#LIB_DEPENDS-ldap=	${LIB_DEPENDS} \
#			::x11/gnome/libgda \
#			::databases/openldap
#CONFIGURE_ARGS+=	--with-ldap="${LOCALBASE}"
#.endif

.if ${FLAVOR:L:Mno_mdb}
CONFIGURE_ARGS+=	--without-mdb
.else
RUN_DEPENDS-mdb=	${MODGETTEXT_RUN_DEPENDS}
MULTI_PACKAGES+=	-mdb
WANTLIB-mdb=		${WANTLIB} gda-${GDA_MAJOR} mdb
LIB_DEPENDS-mdb=	${LIB_DEPENDS} \
			::x11/gnome/libgda \
			::databases/mdbtools/snapshot
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
			::x11/gnome/libgda \
			::databases/mysql
CONFIGURE_ARGS+=	--with-mysql="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-postgresql
.else
RUN_DEPENDS-pgsql=	${MODGETTEXT_RUN_DEPENDS}
MULTI_PACKAGES+=	-pgsql
WANTLIB-pgsql=		${WANTLIB} gda-${GDA_MAJOR} pq com_err crypto ssl
LIB_DEPENDS-pgsql=	${LIB_DEPENDS} \
			::x11/gnome/libgda \
			::databases/postgresql
CONFIGURE_ARGS+=	--with-postgres="${LOCALBASE}"
.endif

#.if ${FLAVOR:L:Mno_odbc}
CONFIGURE_ARGS+=	--without-odbc
#.else
#RUN_DEPENDS-odbc=	${MODGETTEXT_RUN_DEPENDS}
#MULTI_PACKAGES+=	-odbc
#WANTLIB-odbc=		iodbc gda-3.0 gdasql-3.0
#LIB_DEPENDS-odbc=	${LIB_DEPENDS} \
#			::databases/iodbc \
#			::x11/gnome/libgda
#CONFIGURE_ARGS+=	--with-odbc="${LOCALBASE}"
#.endif

# abuses freetds API
CONFIGURE_ARGS+=	--without-tds \
			--enable-system-sqlite

.include <bsd.port.mk>
