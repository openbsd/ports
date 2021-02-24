# $OpenBSD: Makefile,v 1.22 2021/02/24 21:23:17 sthen Exp $

COMMENT=	PHP support for setproctitle

DISTNAME=	proctitle-0.1.2
REVISION=	6

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MODULES=	lang/php/pecl
FLAVORS=	php72 php73 php74
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
