# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:11 espie Exp $

COMMENT= 	"Catalyst development tools"

MODULES=	cpan
DISTNAME=	Catalyst-Devel-1.01
CATEGORIES=	www

HOMEPAGE=	http://www.catalystframework.org/

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
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

CONFIGURE_ARGS=	--skip

.include <bsd.port.mk>
