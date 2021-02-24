# $OpenBSD: Makefile,v 1.31 2021/02/24 21:23:16 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-4.2.0
CATEGORIES=	archivers

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
