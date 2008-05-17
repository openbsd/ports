# $OpenBSD: Makefile,v 1.7 2008/05/17 13:18:32 simon Exp $

COMMENT= 	Catalyst development tools

MODULES=	cpan
DISTNAME=	Catalyst-Devel-1.06
CATEGORIES=	www

HOMEPAGE=	http://www.catalystframework.org/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-File-Copy-Recursive \
		::devel/p5-Module-Install \
		::devel/p5-Path-Class \
		::devel/p5-YAML \
		::devel/p5-parent \
		::textproc/p5-Template \
		::www/p5-Catalyst-Action-RenderView \
		::www/p5-Catalyst-Plugin-ConfigLoader \
		::www/p5-Catalyst-Plugin-Static-Simple \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skip

.include <bsd.port.mk>
