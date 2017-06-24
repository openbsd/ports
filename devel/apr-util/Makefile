# $OpenBSD: Makefile,v 1.50 2017/06/24 12:32:20 stsp Exp $

COMMENT=	companion library to APR

V=		1.6.0
DISTNAME=	apr-util-$V
SHARED_LIBS +=	aprutil-1          6.0     # .6.0

CATEGORIES=	devel

MAINTAINER=	Stefan Sperling <stsp@openbsd.org>

HOMEPAGE=	http://apr.apache.org/

FLAVORS=	ldap
FLAVOR?=

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += lib/db4/db>=4 expat iconv pthread

MASTER_SITES=	${MASTER_SITE_APACHE:=apr/}

LIB_DEPENDS=	converters/libiconv \
		databases/db/v4,no_java,no_tcl

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
LIB_DEPENDS+=	devel/apr
WANTLIB+=	apr-1=6

.include <bsd.port.mk>
