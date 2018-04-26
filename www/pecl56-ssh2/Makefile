# $OpenBSD: Makefile,v 1.1.1.1 2018/04/26 15:02:32 sthen Exp $

COMMENT=		PHP bindings for the libssh2 library

DISTNAME=		ssh2-0.13

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssh2 ssl z

MODULES=		lang/php/pecl
MODPECL_V=		5.6
CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		security/libssh2

.include <bsd.port.mk>
