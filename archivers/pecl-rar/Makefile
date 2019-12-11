# $OpenBSD: Makefile,v 1.29 2019/12/11 16:08:29 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-4.0.0
REVISION=	3
CATEGORIES=	archivers

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
