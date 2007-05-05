# $OpenBSD: Makefile,v 1.5 2007/05/05 17:44:51 simon Exp $

COMMENT= 	"sensible default end action for catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Action-RenderView-0.04
PKGNAME=	p5-${DISTNAME}p2
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
