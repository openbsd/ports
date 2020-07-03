# $OpenBSD: Makefile,v 1.5 2020/07/03 21:44:43 sthen Exp $

COMMENT=		faster Class::Std

DISTNAME=		Class-Std-Fast-v0.0.8
PKGNAME=		p5-${DISTNAME:S/v//}
CATEGORIES=		devel
REVISION=		0

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Std

.include <bsd.port.mk>
