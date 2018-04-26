# $OpenBSD: Makefile,v 1.25 2018/04/26 15:08:56 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-4.0.0
REVISION=	0
CATEGORIES=	archivers

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
