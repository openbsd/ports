# $OpenBSD: Makefile,v 1.20 2017/04/10 11:45:22 sthen Exp $

COMMENT=	PHP support for rar archives

DISTNAME=	rar-3.0.2
CATEGORIES=	archivers
REVISION=	2

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ${LIBCXX}

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
