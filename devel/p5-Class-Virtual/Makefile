# $OpenBSD: Makefile,v 1.11 2017/03/01 14:12:56 benoit Exp $
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
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
