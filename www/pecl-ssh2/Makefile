# $OpenBSD: Makefile,v 1.17 2015/06/26 14:07:32 ajacoutot Exp $

COMMENT=		PHP bindings for the libssh2 library

DISTNAME=		ssh2-0.12

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto ssh2 ssl z

MODULES=		lang/php/pecl
CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		security/libssh2

.include <bsd.port.mk>
