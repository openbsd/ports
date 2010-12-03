# $OpenBSD: Makefile,v 1.8 2010/12/03 11:46:51 ajacoutot Exp $

COMMENT=		universal forwarder for catalyst applications

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-Pluggable-0.04
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

.include <bsd.port.mk>
