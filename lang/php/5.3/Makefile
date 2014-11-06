# $OpenBSD: Makefile,v 1.81 2014/11/06 17:34:33 sthen Exp $

BROKEN-hppa =	no __sync_bool_compare_and_swap support nor asm fallback

# XXX use the bundled libtool because it needs some specific options we
# don't have.
USE_LIBTOOL=	No

PV=		5.3
V=		${PV}.29
SUHOSIN_PHPV=	5.3.24
SUHOSIN_P_V=	5.3.x-0.9.10.5
REVISION-pcntl=	0
REVISION-mysql=	0
REVISION-mysqli= 0
REVISION-pdo_mysql= 0

INI_TEMPLATES=	development production

AUTOCONF_VERSION=      2.13

# sqlite
MULTI_PACKAGES+=	-sqlite
COMMENT-sqlite=		sqlite database access extensions for php5
CONFIGURE_ARGS+=	--with-sqlite=shared,${LOCALBASE} --enable-sqlite-utf8
LIB_DEPENDS-sqlite=	databases/sqlite
WANTLIB-sqlite=		sqlite>=8 pthread

.include <bsd.port.mk>
