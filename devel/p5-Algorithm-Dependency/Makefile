# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:38 sthen Exp $

COMMENT=	base class for implementing various dependency trees

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Algorithm-Dependency-1.111
CATEGORIES=	devel
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Test-ClassAPI \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
