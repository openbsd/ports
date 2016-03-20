# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:16 naddy Exp $

COMMENT=		faster Class::Std

DISTNAME=		Class-Std-Fast-v0.0.8
PKGNAME=		p5-${DISTNAME:S/v//}
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Std

.include <bsd.port.mk>
