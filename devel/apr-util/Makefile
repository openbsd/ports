# $OpenBSD: Makefile,v 1.45 2014/04/21 16:01:00 sthen Exp $

COMMENT=	companion library to APR

V=		1.5.3
REVISION=	0
DISTNAME=	apr-util-$V
SHARED_LIBS +=	aprutil-1          5.0     # .5.3

CATEGORIES=	devel

MAINTAINER=	Stefan Sperling <stsp@openbsd.org>

HOMEPAGE=	http://apr.apache.org/

FLAVORS=	ldap
FLAVOR?=

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += lib/db4/db>=4 expat pthread

MASTER_SITES=	${MASTER_SITE_APACHE:=apr/}

LIB_DEPENDS=	databases/db/v4,no_java,no_tcl

MODULES=	converters/libiconv
CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.68
CONFIGURE_ARGS=	--with-apr=${LOCALBASE} \
		--with-dbm=db4 \
		--with-berkeley-db=${LOCALBASE}/include/db4:${LOCALBASE}/lib/db4 \
		--with-iconv=${LOCALBASE} \
		--includedir=${LOCALBASE}/include/apr-1/ \
		--with-apr=${LOCALBASE}/bin/apr-1-config \
		--with-sqlite3=no \
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
WANTLIB+=		crypto sasl2 ssl lber-2.4 ldap-2.4
.else
CONFIGURE_ARGS+=	--with-ldap=no
.endif

CONFIGURE_ENV+=	APRUTIL_EXPORT_LIBS=-pthread
LIB_DEPENDS+=	apr-1.5.0:devel/apr
WANTLIB+=	apr-1=5

.include <bsd.port.mk>
