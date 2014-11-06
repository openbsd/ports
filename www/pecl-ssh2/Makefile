# $OpenBSD: Makefile,v 1.15 2014/11/06 17:13:40 sthen Exp $

COMMENT=	PHP bindings for the libssh2 library

DISTNAME=	ssh2-0.11.3
REVISION=	5

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto ssh2 ssl z

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	security/libssh2

.include <bsd.port.mk>
