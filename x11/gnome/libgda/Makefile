# $OpenBSD: Makefile,v 1.3 2008/11/22 23:53:47 ajacoutot Exp $

# XXX: use system sqlite3

COMMENT-main=		GNOME Data Access library
COMMENT-ldap=		LDAP backend for libgda
COMMENT-mdb=		MS Access MDB backend for libgda
COMMENT-mysql=		MySQL backend for libgda
COMMENT-pgsql=		PostreSQL backend for libgda

GNOME_PROJECT=		libgda
GNOME_VERSION=		3.1.5

PKGNAME-main=		${DISTNAME}p0
PKGNAME-ldap=		libgda-ldap-${GNOME_VERSION}p0
PKGNAME-mdb=		libgda-mdb-${GNOME_VERSION}p0
PKGNAME-mysql=		libgda-mysql-${GNOME_VERSION}p0
PKGNAME-pgsql=		libgda-pgsql-${GNOME_VERSION}p0

CATEGORIES=		databases

GDA_MAJOR=		3.0

SHARED_LIBS +=	gdasql-3.0           1.0      # .3.0
SHARED_LIBS +=	gda-3.0              1.0      # .3.0
SHARED_LIBS +=	gda-report-3.0       1.0      # .3.0
SHARED_LIBS +=  gda-xslt-3.0         0.0      # .0.0

HOMEPAGE=		http://www.gnome-db.org/

# library: LGPLv2
# tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	crypto m rpcsvc ssl stdc++ util z ORBit-2 dbus-1 \
		dbus-glib-1 fam gconf-2 glib-2.0 gmodule-2.0 \
		gobject-2.0 gpg-error gthread-2.0 pcre xml2

WANTLIB-main=	${WANTLIB} c curses pthread readline

MODULES=		devel/gettext \
			x11/gnome

SUBST_VARS=		GDA_MAJOR

PSEUDO_FLAVORS=		no_ldap no_mdb no_mysql no_pgsql
FLAVOR?=

MULTI_PACKAGES=		-main

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			xslt::textproc/libxslt \
			db.>=5::databases/db/v4

LIB_DEPENDS=		gcrypt::security/libgcrypt \
			gnomevfs-2::x11/gnome/vfs2

REGRESS_DEPENDS=	::devel/check

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--with-bdb="${LOCALBASE}" \
			--without-firebird \
			--without-ibmdb2 \
			--without-mSQL \
			--without-odbc \
			--without-oracle \
			--without-sybase \
			--without-xbase
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4/" \
			LDFLAGS="-L${LOCALBASE}/lib -lm"

FAKE_FLAGS=		configdir="${PREFIX}/share/examples/libgda"

# XXX configuration checks for freetds fail in mysterious ways
CONFIGURE_ARGS+=	--without-tds

.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-ldap
.else
MULTI_PACKAGES+=	-ldap
WANTLIB-ldap=		${WANTLIB} asn1 com_err db gssapi krb5 sasl2
LIB_DEPENDS-ldap=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			lber.>=9,ldap::databases/openldap
CONFIGURE_ARGS+=	--with-ldap="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_mdb}
CONFIGURE_ARGS+=	--without-mdb
.else
MULTI_PACKAGES+=	-mdb
WANTLIB-mdb=		${WANTLIB} db
LIB_DEPENDS-mdb=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			mdb.>=1::databases/mdbtools/snapshot
CONFIGURE_ARGS+=	--with-mdb="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
MULTI_PACKAGES+=	-mysql
WANTLIB-mysql=		${WANTLIB} db
LIB_DEPENDS-mysql=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			mysqlclient::databases/mysql
CONFIGURE_ARGS+=	--with-mysql="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-postgresql
.else
MULTI_PACKAGES+=	-pgsql
WANTLIB-pgsql=		${WANTLIB} db
LIB_DEPENDS-pgsql=	${LIB_DEPENDS} \
			gda-3.0,gdasql-3.0::x11/gnome/libgda \
			pq::databases/postgresql
CONFIGURE_ARGS+=	--with-postgresql="${LOCALBASE}"
.endif

.include <bsd.port.mk>
