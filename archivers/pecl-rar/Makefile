# $OpenBSD: Makefile,v 1.32 2021/04/30 16:52:59 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-4.2.0
CATEGORIES=	archivers
REVISION=	0

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
