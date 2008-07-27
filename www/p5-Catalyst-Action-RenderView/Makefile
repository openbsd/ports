# $OpenBSD: Makefile,v 1.8 2008/07/27 11:02:20 simon Exp $

COMMENT= 	sensible default end action for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Action-RenderView-0.08
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Data-Visitor->=0.08:devel/p5-Data-Visitor \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
