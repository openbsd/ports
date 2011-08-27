# $OpenBSD: Makefile,v 1.15 2011/08/27 13:13:13 robert Exp $

PV=		5.3
V=		${PV}.8
SUHOSIN_PHPV=	${V}
SUHOSIN_P_V=	0.9.10

INI_TEMPLATES=	development production

# fpm
PKGNAME-fpm?=		php-fpm-${V}
MULTI_PACKAGES+=        -fpm
COMMENT-fpm=		stand-alone FPM version of PHP
CONFIGURE_ARGS+=	--enable-fpm \
			--localstatedir=/var \
			--with-fpm-user=www \
			--with-fpm-group=www
LIB_DEPENDS-fpm=	${LIB_DEPENDS-main}
WANTLIB-fpm=		${WANTLIB-main}
RUN_DEPENDS-fpm=	${RUN_DEPENDS-main} \
			php-${V}:lang/php/${PV}

.include <bsd.port.mk>
