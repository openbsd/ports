# $OpenBSD: Makefile,v 1.19 2016/03/19 21:18:38 naddy Exp $

COMMENT=		PHP bindings for the libssh2 library

DISTNAME=		ssh2-0.12
REVISION=		0

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssh2 ssl z

MODULES=		lang/php/pecl
CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		security/libssh2

.include <bsd.port.mk>
