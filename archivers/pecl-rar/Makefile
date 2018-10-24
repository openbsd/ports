# $OpenBSD: Makefile,v 1.26 2018/10/24 14:27:57 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-4.0.0
REVISION=	1
CATEGORIES=	archivers

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
