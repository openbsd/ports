# $OpenBSD: Makefile,v 1.24 2019/09/25 12:07:55 sthen Exp $

COMMENT=		PHP bindings for the libssh2 library

DISTNAME=		ssh2-1.2

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto ssh2 ssl z

MODULES=		lang/php/pecl
CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		security/libssh2

# 500 Internal Server Error on https://pecl.php.net/get/ssh2-1.2.tgz as of 20190925
# Delete entire block below when fixed
MASTER_SITES=		https://spacehopper.org/mirrors/
PORTROACH=		site:https://pecl.php.net/get/
HOMEPAGE=		https://pecl.php.net/package/ssh2
EXTRACT_SUFX=		.tgz
####

.include <bsd.port.mk>
