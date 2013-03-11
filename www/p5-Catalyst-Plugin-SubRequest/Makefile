# $OpenBSD: Makefile,v 1.13 2013/03/11 11:44:45 espie Exp $

COMMENT=	map subrequests to actions in Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-SubRequest-0.17
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime>=5.7012

MAKE_ENV=	TEST_POD=yes

.include <bsd.port.mk>
