# $OpenBSD: Makefile,v 1.9 2015/03/31 13:19:16 benoit Exp $
COMMENT=	base class for virtual base classes

MODULES=	cpan
DISTNAME =	Class-Virtual-0.07
CATEGORIES=	devel

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Data-Inheritable \
		devel/p5-Carp-Assert \
		devel/p5-Class-ISA

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
