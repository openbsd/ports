# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:11 espie Exp $

COMMENT=		"sensible default end action"

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-DefaultEnd-0.06
CATEGORIES=		devel

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
