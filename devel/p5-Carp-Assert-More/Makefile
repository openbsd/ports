# $OpenBSD: Makefile,v 1.5 2010/11/15 19:46:01 espie Exp $

COMMENT=	convenience wrappers around Carp::Assert

MODULES=	cpan

DISTNAME=	Carp-Assert-More-1.12
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Carp-Assert
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
