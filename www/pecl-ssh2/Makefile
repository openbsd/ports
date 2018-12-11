# $OpenBSD: Makefile,v 1.21 2018/12/11 12:33:26 sthen Exp $

COMMENT=		PHP bindings for the libssh2 library

DISTNAME=		ssh2-1.1.2
REVISION=		0

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssh2 ssl z

MODULES=		lang/php/pecl
MODPECL_V=		7
CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		security/libssh2

.include <bsd.port.mk>
