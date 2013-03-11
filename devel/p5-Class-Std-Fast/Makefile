# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:14 espie Exp $

COMMENT=		faster Class::Std

DISTNAME=		Class-Std-Fast-v0.0.8
PKGNAME=		p5-${DISTNAME:S/v//}
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Std

.include <bsd.port.mk>
