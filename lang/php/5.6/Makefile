# $OpenBSD: Makefile,v 1.69 2018/05/27 19:54:17 sthen Exp $

BROKEN-alpha=	pcre_jit_compile.c:65:2: error: #error Unsupported architecture

PV=		5.6
V=		${PV}.36
REVISION=	3

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
COMMENT-mysql=		mysql database access extensions for php5
CONFIGURE_ARGS+=	--with-mysql=shared
LIB_DEPENDS-mysql=	# using mysqlnd
WANTLIB-mysql=		pthread

# sybase-ct
COMMENT-sybase_ct=	sybase database access extensions for php5
CONFIGURE_ARGS+=	--with-sybase-ct=shared,${LOCALBASE}
LIB_DEPENDS-sybase_ct=	databases/freetds
WANTLIB-sybase_ct=	ct ffi gcrypt gmp gnutls gpg-error hogweed iconv \
			idn2 intl nettle p11-kit pthread tasn1 unistring z

# mssql
COMMENT-mssql=		microsoft sql access extensions for php5
CONFIGURE_ARGS+=	--with-mssql=shared,${LOCALBASE}
LIB_DEPENDS-mssql=	databases/freetds
WANTLIB-mssql=		ffi gcrypt gmp gnutls gpg-error hogweed iconv idn2 \
			intl nettle p11-kit pthread sybdb tasn1 unistring z

.include <bsd.port.mk>
