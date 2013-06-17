# $OpenBSD: Makefile,v 1.55 2013/06/17 19:30:33 ajacoutot Exp $

BROKEN-hppa =	no __sync_bool_compare_and_swap support nor asm fallback

# XXX use the bundled libtool because it needs some specific options we
# don't have.
USE_LIBTOOL=	No

PV=		5.3
V=		${PV}.26
SUHOSIN_PHPV=	5.3.24
SUHOSIN_P_V=	0.9.10unofficial

REVISION-main=		0
REVISION-fastcgi=	0
REVISION-fpm=		0
REVISION-imap=		0
REVISION-mysql=		1
REVISION-mysqli=	1
REVISION-pdo_mysql=	1

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
WANTLIB-pcntl=		c pthread

.include <bsd.port.mk>
