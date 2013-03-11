# $OpenBSD: Makefile,v 1.13 2013/03/11 11:44:47 espie Exp $

COMMENT=	PHP bindings for the libssh2 library

DISTNAME=	ssh2-0.11.3
REVISION=	3

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto ssh2 ssl z

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	security/libssh2

.include <bsd.port.mk>
