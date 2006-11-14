# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:11 espie Exp $

COMMENT= 	"Catalyst Apache engine"

MODULES=	cpan
DISTNAME=	Catalyst-Engine-Apache-1.07
CATEGORIES=	www

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::www/mod_perl

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
