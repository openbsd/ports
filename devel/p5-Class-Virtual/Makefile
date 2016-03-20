# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:16 naddy Exp $
COMMENT=	base class for virtual base classes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Class-Virtual-0.07
CATEGORIES=	devel

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-Carp-Assert \
		devel/p5-Class-ISA

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
