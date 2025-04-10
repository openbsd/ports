COMMENT=	companion library to APR

V=		1.6.3
REVISION=	0
DISTNAME=	apr-util-$V
SHARED_LIBS +=	aprutil-1          6.2     # .6.0

CATEGORIES=	devel

MAINTAINER=	Stefan Sperling <stsp@openbsd.org>

HOMEPAGE=	https://apr.apache.org/

FLAVORS=	ldap
FLAVOR?=

# Apache License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += lib/db4/db>=4 crypto expat iconv pthread ssl

SITES=		${SITE_APACHE:=apr/}

LIB_DEPENDS=	converters/libiconv \
		databases/db/v4,no_java,no_tcl

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.71
CONFIGURE_ARGS=	--with-apr=${LOCALBASE} \
		--with-dbm=db4 \
		--with-berkeley-db=${LOCALBASE}/include/db4:${LOCALBASE}/lib/db4 \
		--with-iconv=${LOCALBASE} \
		--includedir=${LOCALBASE}/include/apr-1/ \
		--with-apr=${LOCALBASE}/bin/apr-1-config \
		--with-crypto \
		--with-sqlite3=no \
		--with-nss=no \
		--with-pgsql=no \
		--with-mysql=no \
		--with-oracle=no \
		--with-freetds=no \
		--with-odbc=no

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+=	--with-ldap-include=${LOCALBASE}/include \
			--with-ldap-lib=${LOCALBASE}/lib \
			--with-ldap
LIB_DEPENDS+=		databases/openldap
WANTLIB+=		sasl2 lber ldap
.else
CONFIGURE_ARGS+=	--with-ldap=no
.endif

CONFIGURE_ENV+=	APRUTIL_EXPORT_LIBS=-pthread
LIB_DEPENDS+=	devel/apr
WANTLIB+=	apr-1

.include <bsd.port.mk>
