# $OpenBSD: Makefile,v 1.23 2019/07/12 20:51:00 sthen Exp $

COMMENT=		PHP bindings for the libssh2 library

DISTNAME=		ssh2-1.1.2
REVISION=		0

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto ssh2 ssl z

MODULES=		lang/php/pecl
CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		security/libssh2

.include <bsd.port.mk>
