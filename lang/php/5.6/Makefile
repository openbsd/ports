# $OpenBSD: Makefile,v 1.55 2017/11/17 06:47:17 martijn Exp $

BROKEN-alpha=	pcre_jit_compile.c:65:2: error: #error Unsupported architecture

PV=		5.6
V=		${PV}.31
REVISION=	0

MASTER_SITES0=	https://download.suhosin.org/

FLAVORS=	no_suhosin
FLAVOR?=

SUHOSIN_V=	0.9.38

SUPDISTFILES=	suhosin-${SUHOSIN_V}.tar.gz:0

.if !${FLAVOR:Mno_suhosin}
DISTFILES+=	suhosin-${SUHOSIN_V}.tar.gz:0
PATCH_LIST=	patch-* suhosin-*
CONFIGURE_ARGS+= --enable-suhosin

pre-patch:
	@mv ${WRKDIR}/suhosin-${SUHOSIN_V} ${WRKSRC}/ext/suhosin
.endif

# mysql
MULTI_PACKAGES+=	-mysql
COMMENT-mysql=		mysql database access extensions for php5
CONFIGURE_ARGS+=	--with-mysql=shared,${LOCALBASE}
LIB_DEPENDS-mysql=	databases/mariadb
WANTLIB-mysql=		pthread lib/mysql/mysqlclient

# sybase-ct
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	sybase database access extensions for php5
CONFIGURE_ARGS+=	--with-sybase-ct=shared,${LOCALBASE}
LIB_DEPENDS-sybase_ct=	databases/freetds
WANTLIB-sybase_ct=	ct pthread

# mssql
MULTI_PACKAGES+=	-mssql
COMMENT-mssql=		microsoft sql access extensions for php5
CONFIGURE_ARGS+=        --with-mssql=shared,${LOCALBASE}
LIB_DEPENDS-mssql=	databases/freetds
WANTLIB-mssql=		sybdb>=6 pthread

.include <bsd.port.mk>
