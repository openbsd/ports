# $OpenBSD: Makefile,v 1.5 2013/03/13 06:55:29 jasper Exp $

COMMENT=	provider bindings for Augeas

DISTNAME=	ruby-augeas-0.5.0
PKGNAME=	${DISTNAME:S/ruby-//}
CATEGORIES=	sysutils

HOMEPAGE=	http://augeas.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

WANTLIB+=	augeas pthread xml2

LIB_DEPENDS=	sysutils/augeas

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
