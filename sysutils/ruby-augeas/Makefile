# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:32 espie Exp $

COMMENT=	provider bindings for Augeas

DISTNAME=	ruby-augeas-0.4.1
PKGNAME=	${DISTNAME:S/ruby-//}
REVISION=	1
CATEGORIES=	sysutils

HOMEPAGE=	http://augeas.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

WANTLIB+=	augeas pthread

LIB_DEPENDS=	sysutils/augeas

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
