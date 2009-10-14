# $OpenBSD: Makefile,v 1.13 2009/10/14 23:30:43 jasper Exp $

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
GNOME_VERSION=		4.0.5

PKGNAME-main=		${DISTNAME}
#PKGNAME-ldap=		libgda-ldap-${GNOME_VERSION}
PKGNAME-mdb=		libgda-mdb-${GNOME_VERSION}
PKGNAME-mysql=		libgda-mysql-${GNOME_VERSION}
PKGNAME-pgsql=		libgda-pgsql-${GNOME_VERSION}
#PKGNAME-odbc=		libgda-odbc-${GNOME_VERSION}

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

WANTLIB=		m pcre z

WANTLIB-main=		${WANTLIB} c gcrypt gpg-error ncurses pthread
WANTLIB-main+=		readline tasn1

MODULES=		devel/gettext \
			x11/gnome

SUBST_VARS=		GDA_MAJOR

PSEUDO_FLAVORS=		no_ldap no_mdb no_mysql no_pgsql
FLAVOR?=

MULTI_PACKAGES=		-main

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			soup-2.4::devel/libsoup \
			db:db->=4,<5:databases/db/v4 \
			sqlite3::databases/sqlite3 \
			gnutls::security/gnutls \
			xslt::textproc/libxslt

LIB_DEPENDS=		gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
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
#WANTLIB-ldap=		${WANTLIB} asn1 com_err crypto gssapi krb5 sasl2 ssl
#LIB_DEPENDS-ldap=	${LIB_DEPENDS} \
#			gda-3.0,gdasql-3.0::x11/gnome/libgda \
#			lber.>=9,ldap::databases/openldap
CONFIGURE_ARGS+=	--with-ldap="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_mdb}
CONFIGURE_ARGS+=	--without-mdb
.else
MULTI_PACKAGES+=	-mdb
WANTLIB-mdb=		${WANTLIB} sqlite3
LIB_DEPENDS-mdb=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			mdb.>=1::databases/mdbtools/snapshot
CONFIGURE_ARGS+=	--with-mdb="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
MULTI_PACKAGES+=	-mysql
WANTLIB-mysql=		${WANTLIB} crypto sqlite3 ssl
LIB_DEPENDS-mysql=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			mysqlclient::databases/mysql
CONFIGURE_ARGS+=	--with-mysql="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-postgresql
.else
MULTI_PACKAGES+=	-pgsql
WANTLIB-pgsql=		${WANTLIB} sqlite3
LIB_DEPENDS-pgsql=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			pq::databases/postgresql
CONFIGURE_ARGS+=	--with-postgres="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_odbc}
CONFIGURE_ARGS+=	--without-odbc
.else
MULTI_PACKAGES+=	-odbc
#WANTLIB-odbc=
#LIB_DEPENDS-odbc=	${LIB_DEPENDS} \
#			iodbc::databases/iodbc \
#			gda-3.0,gdasql-3.0::x11/gnome/libgda
CONFIGURE_ARGS+=	--with-odbc="${LOCALBASE}"
.endif

# abuses freetds API
CONFIGURE_ARGS+=	--without-tds \
			--enable-system-sqlite

.include <bsd.port.mk>
