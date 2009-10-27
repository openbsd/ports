# $OpenBSD: Makefile,v 1.10 2009/10/27 00:51:42 jim Exp $

COMMENT= 	Catalyst development tools

MODULES=	cpan
DISTNAME=	Catalyst-Devel-1.21
CATEGORIES=	www

HOMEPAGE=	http://www.catalystframework.org/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Config-General \
		::devel/p5-File-ChangeNotify \
		::devel/p5-File-Copy-Recursive \
		::devel/p5-Module-Install \
		::devel/p5-Path-Class \
		::textproc/p5-Template \
		::www/p5-Catalyst-Action-RenderView \
		::www/p5-Catalyst-Plugin-ConfigLoader \
		::www/p5-Catalyst-Plugin-Static-Simple \
		::www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS+=--skipdeps

.include <bsd.port.mk>
