# $OpenBSD: Makefile,v 1.5 2010/07/13 20:14:23 sthen Exp $

COMMENT=		sensible default end action

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-DefaultEnd-0.06
REVISION=		0
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
