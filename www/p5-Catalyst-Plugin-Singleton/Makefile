# $OpenBSD: Makefile,v 1.6 2010/12/03 11:46:52 ajacoutot Exp $

COMMENT=		singleton for the catalyst context

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-Singleton-0.02
REVISION=		0
CATEGORIES=		www
USE_GROFF =		Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	modbuild

.include <bsd.port.mk>
