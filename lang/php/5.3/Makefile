# $OpenBSD: Makefile,v 1.68 2013/10/18 20:20:29 sthen Exp $

BROKEN-hppa =	no __sync_bool_compare_and_swap support nor asm fallback

# XXX use the bundled libtool because it needs some specific options we
# don't have.
USE_LIBTOOL=	No

PV=		5.3
V=		${PV}.27
SUHOSIN_PHPV=	5.3.24
SUHOSIN_P_V=	0.9.10unofficial
REVISION=		0
REVISION-main=		2
REVISION-fastcgi=	2
REVISION-fpm=		3
REVISION-tidy=		1
REVISION-imap=		1

INI_TEMPLATES=	development production

# fpm
PKGNAME-fpm?=		php-fpm-${V}
MULTI_PACKAGES+=        -fpm
COMMENT-fpm=		stand-alone FPM version of PHP
CONFIGURE_ARGS+=	--enable-fpm \
			--with-fpm-user=www \
			--with-fpm-group=www
LIB_DEPENDS-fpm=	${LIB_DEPENDS-main}
WANTLIB-fpm=		${WANTLIB-main}
RUN_DEPENDS-fpm=	${RUN_DEPENDS-main} \
			php-${V}:lang/php/${PV}

# pcntl
PKGNAME-pcntl?=		php-pcntl-${V}
MULTI_PACKAGES+=	-pcntl
COMMENT-pcntl=		PCNTL extensions for php5
CONFIGURE_ARGS+=	--enable-pcntl=shared
LIB_DEPENDS-pcntl=
WANTLIB-pcntl=		pthread

# sqlite
MULTI_PACKAGES+=	-sqlite
COMMENT-sqlite=		sqlite database access extensions for php5
CONFIGURE_ARGS+=	--with-sqlite=shared,${LOCALBASE} --enable-sqlite-utf8
LIB_DEPENDS-sqlite=	databases/sqlite
WANTLIB-sqlite=		sqlite>=8 pthread

.include <bsd.port.mk>
