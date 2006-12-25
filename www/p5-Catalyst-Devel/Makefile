# $OpenBSD: Makefile,v 1.3 2006/12/25 13:40:28 simon Exp $

COMMENT= 	"Catalyst development tools"

MODULES=	cpan
DISTNAME=	Catalyst-Devel-1.01
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://www.catalystframework.org/

MAINTAINER=	Simon Dassow <simon@openbsd.org>

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
		::textproc/p5-Template \
		::www/p5-Catalyst-Action-RenderView \
		::www/p5-Catalyst-Plugin-ConfigLoader \
		::www/p5-Catalyst-Plugin-Static-Simple \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skip

.include <bsd.port.mk>
