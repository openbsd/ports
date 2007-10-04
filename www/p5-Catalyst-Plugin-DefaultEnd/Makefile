# $OpenBSD: Makefile,v 1.4 2007/10/04 21:25:25 jasper Exp $

COMMENT=		sensible default end action

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-DefaultEnd-0.06
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		www devel

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	modbuild

.include <bsd.port.mk>
