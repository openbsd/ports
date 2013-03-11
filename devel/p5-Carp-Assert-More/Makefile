# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:13 espie Exp $

COMMENT=	convenience wrappers around Carp::Assert

MODULES=	cpan

DISTNAME=	Carp-Assert-More-1.12
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Carp-Assert
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
