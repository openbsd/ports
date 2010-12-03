# $OpenBSD: Makefile,v 1.14 2010/12/03 11:44:35 ajacoutot Exp $

COMMENT=	subversion activity notification

MODULES=	cpan

DISTNAME=	SVN-Notify-2.78
REVISION=	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/subversion,-perl \
		www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= modbuild
USE_GROFF =	Yes

.include <bsd.port.mk>
