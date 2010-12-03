# $OpenBSD: Makefile,v 1.8 2010/12/03 11:46:51 ajacoutot Exp $

COMMENT=		sensible default end action

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-DefaultEnd-0.06
REVISION=		1
CATEGORIES=		www devel
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
