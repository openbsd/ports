# $OpenBSD: Makefile,v 1.20 2010/07/25 08:15:32 ajacoutot Exp $

#
# XXX:
# The -ldap and -odbc packages are empty. This is because upstream
# is rewriting them. When they get back, updates will be easier
# with keeping the subpackages for now.

SHARED_ONLY=		Yes

COMMENT-main=		GNOME Data Access library
COMMENT-ldap=		LDAP backend for libgda
COMMENT-mdb=		MS Access MDB backend for libgda
COMMENT-mysql=		MySQL backend for libgda
COMMENT-pgsql=		PostreSQL backend for libgda
COMMENT-odbc=		ODBC backend for libgda

GNOME_PROJECT=		libgda
GNOME_VERSION=		4.0.9

PKGNAME-main=		${DISTNAME}
EPOCH-main=		1
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

REVISION-main=		0
REVISION-mdb=		0
REVISION-mysql=		0
REVISION-pgsql=		0

CATEGORIES=		databases

GDA_MAJOR=		4.0

SHARED_LIBS +=  gda-4.0               0.0        # .4.0
SHARED_LIBS +=  gda-report-4.0        0.0        # .4.0
SHARED_LIBS +=  gda-xslt-4.0             0.0     # .4.0

HOMEPAGE=		http://www.gnome-db.org/

# library: LGPLv2
# tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m pcre z gio-2.0 glib-2.0 gmodule-2.0 \
			gobject-2.0 gthread-2.0 xml2

WANTLIB-main=		${WANTLIB} c gcrypt gpg-error ncurses pthread
WANTLIB-main+=		readline tasn1 soup-2.4 db sqlite3 gnutls xslt

MODULES=		devel/gettext \
			x11/gnome

SUBST_VARS=		GDA_MAJOR

#PSEUDO_FLAVORS=	no_ldap no_mdb no_mysql no_odbc no_pgsql
PSEUDO_FLAVORS=		no_mdb no_mysql no_pgsql
FLAVOR?=

MULTI_PACKAGES=		-main

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			::devel/libsoup \
			:db->=4,<5:databases/db/v4 \
			::databases/sqlite3 \
			::security/gnutls \
			::textproc/libxslt

LIB_DEPENDS=		::devel/glib2 \
			::textproc/libxml

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

#.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-ldap
#.else
#MULTI_PACKAGES+=	-ldap
#WANTLIB-ldap=		${WANTLIB} asn1 com_err crypto gssapi krb5 sasl2 ssl
#LIB_DEPENDS-ldap=	${LIB_DEPENDS} \
#			gda-3.0,gdasql-3.0::x11/gnome/libgda \
#			lber.>=9,ldap::databases/openldap
#CONFIGURE_ARGS+=	--with-ldap="${LOCALBASE}"
#.endif

.if ${FLAVOR:L:Mno_mdb}
CONFIGURE_ARGS+=	--without-mdb
.else
MULTI_PACKAGES+=	-mdb
WANTLIB-mdb=		${WANTLIB} sqlite3 gda-${GDA_MAJOR} mdb
LIB_DEPENDS-mdb=	${LIB_DEPENDS} \
			::x11/gnome/libgda \
			::databases/mdbtools/snapshot
CONFIGURE_ARGS+=	--with-mdb="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
MULTI_PACKAGES+=	-mysql
WANTLIB-mysql=		${WANTLIB} crypto sqlite3 ssl gda-${GDA_MAJOR} \
			mysqlclient
LIB_DEPENDS-mysql=	${LIB_DEPENDS} \
			::x11/gnome/libgda \
			::databases/mysql
CONFIGURE_ARGS+=	--with-mysql="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-postgresql
.else
MULTI_PACKAGES+=	-pgsql
WANTLIB-pgsql=		${WANTLIB} sqlite3 gda-${GDA_MAJOR} pq
LIB_DEPENDS-pgsql=	${LIB_DEPENDS} \
			::x11/gnome/libgda \
			::databases/postgresql
CONFIGURE_ARGS+=	--with-postgres="${LOCALBASE}"
.endif

#.if ${FLAVOR:L:Mno_odbc}
CONFIGURE_ARGS+=	--without-odbc
#.else
#MULTI_PACKAGES+=	-odbc
#WANTLIB-odbc=
#LIB_DEPENDS-odbc=	${LIB_DEPENDS} \
#			iodbc::databases/iodbc \
#			gda-3.0,gdasql-3.0::x11/gnome/libgda
#CONFIGURE_ARGS+=	--with-odbc="${LOCALBASE}"
#.endif

# abuses freetds API
CONFIGURE_ARGS+=	--without-tds \
			--enable-system-sqlite

.include <bsd.port.mk>
