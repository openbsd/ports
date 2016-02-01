# $OpenBSD: Makefile,v 1.18 2016/02/01 21:55:39 sthen Exp $

COMMENT=		PHP bindings for the libssh2 library

DISTNAME=		ssh2-0.12
REVISION=		0

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto ssh2 ssl z

MODULES=		lang/php/pecl
CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		security/libssh2

.include <bsd.port.mk>
