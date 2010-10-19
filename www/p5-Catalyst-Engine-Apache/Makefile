# $OpenBSD: Makefile,v 1.8 2010/10/19 08:02:54 espie Exp $

COMMENT= 	Catalyst Apache engine

MODULES=	cpan
DISTNAME=	Catalyst-Engine-Apache-1.12
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		:mod_perl-*|ap2-mod_perl-*:www/mod_perl
BUILD_DEPENDS=	::www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
