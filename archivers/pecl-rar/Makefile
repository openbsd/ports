# $OpenBSD: Makefile,v 1.22 2017/07/23 09:26:25 espie Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-3.0.2
CATEGORIES=	archivers
REVISION =	3

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
