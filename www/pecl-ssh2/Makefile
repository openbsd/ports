# $OpenBSD: Makefile,v 1.12 2012/08/30 14:09:21 sthen Exp $

COMMENT=	PHP bindings for the libssh2 library

DISTNAME=	ssh2-0.11.3
REVISION=	3

# PHP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += crypto ssh2 ssl z

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	security/libssh2

.include <bsd.port.mk>
