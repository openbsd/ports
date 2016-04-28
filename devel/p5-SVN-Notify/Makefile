# $OpenBSD: Makefile,v 1.18 2016/04/28 14:21:58 rpe Exp $

COMMENT=	subversion activity notification

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	SVN-Notify-2.86
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/subversion,-perl \
		www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=	mail/p5-Email-Address

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
