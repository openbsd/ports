# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:21 espie Exp $

COMMENT=	subversion activity notification

MODULES=	cpan

DISTNAME=	SVN-Notify-2.78
REVISION=	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/subversion,-perl \
		www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= modbuild
USE_GROFF =	Yes

.include <bsd.port.mk>
