# $OpenBSD: Makefile,v 1.16 2015/01/19 14:42:50 benoit Exp $

COMMENT=	subversion activity notification

MODULES=	cpan

DISTNAME =	SVN-Notify-2.84
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/subversion,-perl \
		www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
