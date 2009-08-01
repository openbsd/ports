# $OpenBSD: Makefile,v 1.12 2009/08/01 14:14:24 sthen Exp $

SHARED_ONLY=		Yes

COMMENT-main=		GNOME Data Access library
COMMENT-ldap=		LDAP backend for libgda
COMMENT-mdb=		MS Access MDB backend for libgda
COMMENT-mysql=		MySQL backend for libgda
COMMENT-pgsql=		PostreSQL backend for libgda
COMMENT-odbc=		ODBC backend for libgda

GNOME_PROJECT=		libgda
GNOME_VERSION=		3.0.4

PKGNAME-main=		${DISTNAME}p2v0
PKGNAME-ldap=		libgda-ldap-${GNOME_VERSION}p1v0
PKGNAME-mdb=		libgda-mdb-${GNOME_VERSION}p1v0
PKGNAME-mysql=		libgda-mysql-${GNOME_VERSION}p1v0
PKGNAME-pgsql=		libgda-pgsql-${GNOME_VERSION}p1v0
PKGNAME-odbc=		libgda-odbc-${GNOME_VERSION}

CATEGORIES=		databases

GDA_MAJOR=		3.0

SHARED_LIBS +=	gdasql-3.0           2.0      # .3.0
SHARED_LIBS +=	gda-3.0              2.0      # .3.0
SHARED_LIBS +=	gda-report-3.0       2.0      # .3.0

HOMEPAGE=		http://www.gnome-db.org/

# library: LGPLv2
# tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	m pcre rpcsvc stdc++ z

WANTLIB-main=	${WANTLIB} c pthread

MODULES=		devel/gettext \
			x11/gnome

SUBST_VARS=		GDA_MAJOR

PSEUDO_FLAVORS=		no_ldap no_mdb no_mysql no_pgsql
FLAVOR?=

MULTI_PACKAGES=		-main

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			db:db->=4,<5:databases/db/v4 \
			sqlite3::databases/sqlite3

LIB_DEPENDS=		fam::sysutils/fam \
			glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			xml2.>=10::textproc/libxml

REGRESS_DEPENDS=	::devel/check

LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-static \
			--disable-gtk-doc \
			--with-bdb="${LOCALBASE}" \
			--without-firebird \
			--without-ibmdb2 \
			--without-oracle \
			--without-sybase \
			--without-xbase
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4/" \
			LDFLAGS="-L${LOCALBASE}/lib -lm"

FAKE_FLAGS=		configdir="${PREFIX}/share/examples/libgda"

.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-ldap
.else
MULTI_PACKAGES+=	-ldap
WANTLIB-ldap=		${WANTLIB} asn1 com_err crypto gssapi krb5 sasl2 ssl
LIB_DEPENDS-ldap=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			lber.>=9,ldap::databases/openldap
CONFIGURE_ARGS+=	--with-ldap="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_mdb}
CONFIGURE_ARGS+=	--without-mdb
.else
MULTI_PACKAGES+=	-mdb
WANTLIB-mdb=		${WANTLIB}
LIB_DEPENDS-mdb=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			mdb.>=1,mdbsql::databases/mdbtools/snapshot
CONFIGURE_ARGS+=	--with-mdb="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
MULTI_PACKAGES+=	-mysql
WANTLIB-mysql=		${WANTLIB} crypto ssl
LIB_DEPENDS-mysql=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			mysqlclient::databases/mysql
CONFIGURE_ARGS+=	--with-mysql="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-postgresql
.else
MULTI_PACKAGES+=	-pgsql
WANTLIB-pgsql=		${WANTLIB}
LIB_DEPENDS-pgsql=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			pq::databases/postgresql
CONFIGURE_ARGS+=	--with-postgres="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_odbc}
CONFIGURE_ARGS+=	--without-odbc
.else
MULTI_PACKAGES+=	-odbc
WANTLIB-odbc=		${WANTLIB}
LIB_DEPENDS-odbc=	${LIB_DEPENDS} \
			iodbc::databases/iodbc \
			gda-3.0,gdasql-3.0::x11/gnome/libgda
CONFIGURE_ARGS+=	--with-odbc="${LOCALBASE}"
.endif

# abuses freetds API
CONFIGURE_ARGS+=	--without-tds

.include <bsd.port.mk>
