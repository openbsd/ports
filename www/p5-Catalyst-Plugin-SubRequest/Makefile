# $OpenBSD: Makefile,v 1.12 2012/04/08 21:58:56 sthen Exp $

COMMENT=	map subrequests to actions in Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-SubRequest-0.17
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime>=5.7012

MAKE_ENV=	TEST_POD=yes

.include <bsd.port.mk>
