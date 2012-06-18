# $OpenBSD: Makefile,v 1.10 2012/06/18 07:56:13 ajacoutot Exp $

COMMENT=	PHP bindings for the libssh2 library

DISTNAME=	ssh2-0.11.3
REVISION=	1

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
