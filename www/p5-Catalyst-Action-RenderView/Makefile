# $OpenBSD: Makefile,v 1.4 2006/12/25 13:40:28 simon Exp $

COMMENT= 	"sensible default end action for catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Action-RenderView-0.04
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	www

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
