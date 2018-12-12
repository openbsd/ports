# $OpenBSD: Makefile,v 1.22 2018/12/12 23:46:18 sthen Exp $

COMMENT=		PHP bindings for the libssh2 library

DISTNAME=		ssh2-1.1.2
REVISION=		0

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssh2 ssl z

MODULES=		lang/php/pecl
CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		security/libssh2

.include <bsd.port.mk>
