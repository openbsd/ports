# $OpenBSD: Makefile,v 1.10 2010/10/19 07:54:22 espie Exp $

COMMENT= 	Template Toolkit views for Catalyst

DISTNAME=	Catalyst-View-TT-0.29
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

RUN_DEPENDS=	::devel/p5-Data-Dump \
		::devel/p5-Class-Accessor \
		::devel/p5-MRO-Compat \
		::devel/p5-Path-Class \
		::textproc/p5-Template-Timer \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
