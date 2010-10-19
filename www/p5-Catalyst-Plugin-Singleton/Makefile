# $OpenBSD: Makefile,v 1.4 2010/10/19 08:02:55 espie Exp $

COMMENT=		singleton for the catalyst context

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-Singleton-0.02
CATEGORIES=		www
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
