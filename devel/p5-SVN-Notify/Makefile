# $OpenBSD: Makefile,v 1.11 2010/09/15 13:52:11 sthen Exp $

COMMENT=	subversion activity notification

MODULES=	cpan

DISTNAME=	SVN-Notify-2.78
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/subversion,-perl \
		::www/p5-HTML-Parser
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE= modbuild

.include <bsd.port.mk>
