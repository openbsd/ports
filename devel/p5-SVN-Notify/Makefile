# $OpenBSD: Makefile,v 1.17 2016/03/20 19:56:33 naddy Exp $

COMMENT=	subversion activity notification

MODULES=	cpan
PKG_ARCH=	*

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
