# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:48 sthen Exp $
COMMENT=	base class for virtual base classes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Class-Virtual-0.08
CATEGORIES=	devel

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-Carp-Assert \
		devel/p5-Class-ISA

# perl
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
