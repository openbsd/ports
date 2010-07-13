# $OpenBSD: Makefile,v 1.9 2010/07/13 19:46:11 sthen Exp $

COMMENT=	stack trace for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-StackTrace-0.09
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Devel-StackTrace \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
