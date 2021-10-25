# $OpenBSD: Makefile,v 1.10 2021/10/25 12:33:19 sthen Exp $

COMMENT=	PHP bindings for the libmcrypt library

DISTNAME=	mcrypt-1.0.4
DIST_SUBDIR=	pecl
REVISION=	2

CATEGORIES=	security

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB += ltdl mcrypt

MODULES=	lang/php/pecl

MODPHP_DO_SAMPLE= mcrypt

LIB_DEPENDS=	devel/libtool,-ltdl \
		security/libmcrypt

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
