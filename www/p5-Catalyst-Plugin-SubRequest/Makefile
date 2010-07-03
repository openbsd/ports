# $OpenBSD: Makefile,v 1.8 2010/07/03 03:42:48 jim Exp $

COMMENT= 	map subrequests to actions in Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-SubRequest-0.16
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Catalyst-Runtime->=5.7012:www/p5-Catalyst-Runtime
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=yes

.include <bsd.port.mk>
