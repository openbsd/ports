# $OpenBSD: Makefile,v 1.1.1.1 2012/12/31 14:51:45 jasper Exp $

COMMENT=	provider bindings for Augeas

DISTNAME=	ruby-augeas-0.4.1
CATEGORIES=	sysutils

HOMEPAGE=	http://augeas.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

WANTLIB+=	augeas pthread

LIB_DEPENDS=	sysutils/augeas

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>