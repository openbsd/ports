# $OpenBSD: Makefile,v 1.27 2018/12/11 12:33:26 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-4.0.0
REVISION=	2
CATEGORIES=	archivers

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
