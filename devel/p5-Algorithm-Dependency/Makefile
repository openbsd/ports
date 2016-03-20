# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:12 naddy Exp $

COMMENT=	base class for implementing various dependency trees

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Algorithm-Dependency-1.110
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-ClassAPI \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
