# $OpenBSD: Makefile,v 1.1.1.1 2008/08/21 10:27:24 jasper Exp $

COMMENT-main=		GNOME Data Access library
COMMENT-db4=		BerkeleyDB backend for libgda
COMMENT-ldap=		LDAP backend for libgda
COMMENT-mdb=		MS Access MDB backend for libgda
COMMENT-mysql=		MySQL backend for libgda
COMMENT-pgsql=		PostreSQL backend for libgda

GNOME_PROJECT=		libgda
GNOME_VERSION=		3.0.4

PKGNAME-main=		${DISTNAME}
PKGNAME-db4=		libgda-db4-${GNOME_VERSION}
PKGNAME-ldap=		libgda-ldap-${GNOME_VERSION}
PKGNAME-mdb=		libgda-mdb-${GNOME_VERSION}
PKGNAME-mysql=		libgda-mysql-${GNOME_VERSION}
PKGNAME-pgsql=		libgda-pgsql-${GNOME_VERSION}

CATEGORIES=		databases

GDA_MAJOR=		${GNOME_VERSION:R}

SHARED_LIBS +=	gdasql-3.0           0.0      # .3.0
SHARED_LIBS +=	gda-3.0              0.0      # .3.0
SHARED_LIBS +=	gda-report-3.0       0.0      # .3.0

HOMEPAGE=		http://www.gnome-db.org/

# library: LGPL
# tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m pcre rpcsvc stdc++ z
WANTLIB-main=		${WANTLIB} c pthread

MODULES=		devel/gettext \
			x11/gnome

SUBST_VARS=		GDA_MAJOR

PSEUDO_FLAVORS=		no_db4 no_ldap no_mdb no_mysql no_pgsql
FLAVOR?=

MULTI_PACKAGES=		-main

LIB_DEPENDS=		glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			xml2::textproc/libxml \
			fam::sysutils/fam

REGRESS_DEPENDS=	::devel/check

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--without-firebird \
			--without-ibmdb2 \
			--without-mSQL \
			--without-odbc \
			--without-oracle \
			--without-sybase \
			--without-xbase
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm"

FAKE_FLAGS=		configdir="${PREFIX}/share/examples/libgda"

# XXX configuration checks for freetds fail in mysterious ways
CONFIGURE_ARGS+=	--without-tds

.if ${FLAVOR:L:Mno_db4}
CONFIGURE_ARGS+=	--without-bdb
.else
MULTI_PACKAGES+=	-db4
WANTLIB-db4=		${WANTLIB}
LIB_DEPENDS-db4=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			db::databases/db/v4
CONFIGURE_ARGS+=	--with-bdb="${LOCALBASE}"
.endif

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
CONFIGURE_ARGS+=	--with-postgresql="${LOCALBASE}"
.endif

.include <bsd.port.mk>
