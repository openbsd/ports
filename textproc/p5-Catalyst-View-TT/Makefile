# $OpenBSD: Makefile,v 1.5 2007/02/03 19:10:39 simon Exp $

COMMENT= 	"Template Toolkit views for Catalyst"

DISTNAME=	Catalyst-View-TT-0.25
CATEGORIES=	textproc

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::devel/p5-Data-Dump \
		::devel/p5-Path-Class \
		::textproc/p5-Template-Timer \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
