# $OpenBSD: Makefile,v 1.12 2013/03/11 11:44:45 espie Exp $

COMMENT= 	serving static pages with catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Static-Simple-0.29
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Moose \
		devel/p5-MooseX-Types \
		devel/p5-namespace-autoclean \
		www/p5-Catalyst-Runtime>=5.80008 \
		mail/p5-MIME-Types>=1.25
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=www/p5-Catalyst-Plugin-SubRequest>=0.15

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
