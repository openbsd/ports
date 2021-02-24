# $OpenBSD: Makefile,v 1.21 2021/02/24 21:14:58 sthen Exp $

COMMENT=	PHP support for setproctitle

DISTNAME=	proctitle-0.1.2
REVISION=	5

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MODULES=	lang/php/pecl
FLAVORS=	php72 php73 php74
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
