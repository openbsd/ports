# $OpenBSD: Makefile,v 1.6 2010/10/19 08:02:55 espie Exp $

COMMENT=		sensible default end action

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-DefaultEnd-0.06
REVISION=		0
CATEGORIES=		www devel
USE_GROFF =	Yes

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
