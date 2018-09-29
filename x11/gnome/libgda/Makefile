# $OpenBSD: Makefile,v 1.127 2018/09/29 08:08:19 ajacoutot Exp $

PORTROACH=		skipv:5.90.1

COMMENT-main=		GNOME Data Access library
COMMENT-ldap=		LDAP backend for libgda
COMMENT-mysql=		MySQL backend for libgda
COMMENT-pgsql=		PostgreSQL backend for libgda
COMMENT-ui=		GTK+ extension and tools for libgda

GNOME_PROJECT=		libgda
GNOME_VERSION=		5.2.5

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
WANTLIB += iconv intl

# /libgda-5.1.2_writes_to_HOME/.cache/g-ir-scanner
PORTHOME=		${WRKDIST}

MODULES=		lang/python \
			x11/gnome

MODGNOME_LDFLAGS=	-lm
MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

MODPY_BUILDDEP=		No
MODPY_RUNDEP=		No
MODPY_ADJ_FILES=	libgda-report/RML/trml2html/trml2html.py \
			libgda-report/RML/trml2pdf/trml2pdf.py

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
CONFIGURE_ENV +=	VALA_API_VERSION=0.40

FAKE_FLAGS=		configdir="${PREFIX}/share/examples/libgda"

MULTI_PACKAGES=		-main -ui -mysql -pgsql -ldap

### -main
WANTLIB-main += ${WANTLIB}
WANTLIB-main += c curses gcrypt gpg-error sqlite3 gee-0.8
WANTLIB-main += readline soup-2.4 crypto gdk_pixbuf-2.0 png xslt

RUN_DEPENDS-main=	${MODPY_RUN_DEPENDS}
LIB_DEPENDS-main=	devel/libgee \
			devel/libsoup \
			textproc/libxslt \
			graphics/gdk-pixbuf2 \
			x11/gnome/libsecret

### -ui
WANTLIB-ui += ${WANTLIB}
WANTLIB-ui += X11 Xcomposite Xcursor Xdamage Xext Xfixes graphite2
WANTLIB-ui += Xi Xinerama Xrandr Xrender atk-1.0 c cairo atk-bridge-2.0
WANTLIB-ui += cairo-gobject expat fontconfig freetype gda-${GDA_MAJOR}
WANTLIB-ui += gdk-3 gdk_pixbuf-2.0 goocanvas-2.0 gtk-3 gtksourceview-3.0
WANTLIB-ui += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB-ui += xcb xcb-render xcb-shm epoxy atspi harfbuzz dbus-1 fribidi

LIB_DEPENDS-ui=		graphics/goocanvas2 \
			x11/dbus \
			x11/gnome/libgda \
			x11/gtksourceview3
RUN_DEPENDS-ui=		${RUN_DEPENDS} \
			devel/iso-codes

### -mysql
WANTLIB-mysql += ${WANTLIB}
WANTLIB-mysql += crypto gda-${GDA_MAJOR} mysqlclient ssl ${COMPILER_LIBCXX}

RUN_DEPENDS-mysql=	# empty
LIB_DEPENDS-mysql=	x11/gnome/libgda \
			databases/mariadb

### pgsql
WANTLIB-pgsql += ${WANTLIB}
WANTLIB-pgsql += gda-${GDA_MAJOR} pq crypto ssl

RUN_DEPENDS-pgsql=	# empty
LIB_DEPENDS-pgsql=	x11/gnome/libgda \
			databases/postgresql

### -ldap
WANTLIB-ldap += ${WANTLIB}
WANTLIB-ldap += crypto gda-${GDA_MAJOR} lber-2.4 ldap-2.4 sasl2 ssl

RUN_DEPENDS-ldap=	# empty
LIB_DEPENDS-ldap=	x11/gnome/libgda \
			databases/openldap

### needed with newer glib-mkenums(1) ##########################################
BUILD_DEPENDS +=	converters/recode

# From b611c805b3a2248e2f4f85f993f96c13a05b4730 Mon Sep 17 00:00:00 2001
# From: Emmanuele Bassi <ebassi@gnome.org>
# Date: Mon, 17 Jul 2017 22:37:50 +0100
# Subject: Convert files to Unicode
RECODE +=		libgda/gda-connection.h \
			libgda/sql-parser/gda-sql-statement.h \
			libgda/sql-parser/gda-statement-struct-delete.h \
			libgda/sql-parser/gda-statement-struct-unknown.h \
			libgda/sql-parser/gda-statement-struct-util.h

# From 12429af2c0a40bb199ced605b7f7fab5ecc77e86 Mon Sep 17 00:00:00 2001
# From: Murray Cumming <murrayc@murrayc.com>
# Date: Wed, 25 Oct 2017 22:20:49 +0200
# Subject: Convert several headers from ISO-8559 to UTF-8.
RECODE +=		libgda-report/engine/rt-parser.h \
			libgda-report/gda-report-document-private.h \
			libgda-report/gda-report-document.h \
			libgda-report/libgda-report.h \
			libgda-ui/gdaui-easy.h \
			libgda-ui/libgda-ui.h \
			libgda-xslt/libgda-xslt.h \
			libgda/binreloc/gda-binreloc.h \
			libgda/gda-column.h \
			libgda/gda-connection-internal.h \
			libgda/gda-connection-sqlite.h \
			libgda/gda-data-model-extra.h \
			libgda/gda-data-model-iter-extra.h \
			libgda/gda-data-model.h \
			libgda/gda-meta-store-extra.h \
			libgda/gda-meta-struct-private.h \
			libgda/gda-row.h \
			libgda/gda-server-operation-private.h \
			libgda/gda-server-provider-private.h \
			libgda/gda-statement-extra.h \
			libgda/gda-util.h \
			libgda/libgda-global-variables.h \
			libgda/providers-support/gda-data-select-priv.h \
			libgda/sqlite/gda-sqlite-provider.h \
			libgda/sqlite/gda-sqlite-recordset.h \
			libgda/sqlite/gda-sqlite.h \
			libgda/sqlite/virtual/gda-vconnection-data-model-private.h \
			providers/firebird/gda-firebird.h \
			providers/jdbc/gda-jdbc.h \
			providers/ldap/gdaprov-data-model-ldap.h \
			providers/mdb/gda-mdb-provider.h \
			providers/mdb/gda-mdb.h \
			providers/mysql/gda-mysql-provider.h \
			providers/mysql/gda-mysql-recordset.h \
			providers/mysql/gda-mysql.h \
			providers/postgres/gda-postgres-recordset.h

# Some more...
RECODE +=		libgda/gda-batch.h \
			libgda/gda-config.h \
			libgda/gda-data-model-extra.h \
			libgda/gda-mutex.h \
			libgda/libgda-global-variables.h
################################################################################

# XXX sync with LIBdb_VERSION in databases/db/v4
# (find a proper way to push upstream)
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf no-autoheader
post-patch:
	sed -i 's,bdb_libext="\$$linklibext",bdb_libext=".so.5.0",' ${WRKSRC}/m4/bdb.m4
	cd ${WRKSRC} && ${LOCALBASE}/bin/recode ISO-8859-1..utf8 ${RECODE}

post-install:
	rm ${PREFIX}/lib/libgda-${GDA_MAJOR}/{plugins,providers}/*.la

.include <bsd.port.mk>
