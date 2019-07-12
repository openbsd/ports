# $OpenBSD: Makefile,v 1.28 2019/07/12 20:43:29 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-4.0.0
REVISION=	2
CATEGORIES=	archivers

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
