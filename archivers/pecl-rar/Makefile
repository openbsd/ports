# $OpenBSD: Makefile,v 1.30 2020/11/21 16:30:25 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-4.1.0
CATEGORIES=	archivers

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
