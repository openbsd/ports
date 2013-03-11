# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:12 espie Exp $

COMMENT=	base class for implementing various dependency trees

MODULES=	cpan

DISTNAME=	Algorithm-Dependency-1.110
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-ClassAPI \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
