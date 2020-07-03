# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:44 sthen Exp $
COMMENT=	base class for virtual base classes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Class-Virtual-0.08
CATEGORIES=	devel
REVISION =	0

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-Carp-Assert \
		devel/p5-Class-ISA

# perl
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
