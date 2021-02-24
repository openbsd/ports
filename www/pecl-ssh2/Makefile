# $OpenBSD: Makefile,v 1.27 2021/02/24 21:23:17 sthen Exp $

COMMENT=	PHP bindings for the libssh2 library

DISTNAME=	ssh2-1.2
REVISION=	2

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto ssh2 ssl z

MODULES=	lang/php/pecl
FLAVORS=	php72 php73 php74
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	security/libssh2

.include <bsd.port.mk>
