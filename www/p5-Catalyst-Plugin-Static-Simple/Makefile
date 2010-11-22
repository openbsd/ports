# $OpenBSD: Makefile,v 1.10 2010/11/22 08:36:50 espie Exp $

COMMENT= 	serving static pages with catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Static-Simple-0.29
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Moose \
		devel/p5-MooseX-Types \
		devel/p5-namespace-autoclean \
		www/p5-Catalyst-Runtime>=5.80008 \
		mail/p5-MIME-Types>=1.25
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=www/p5-Catalyst-Plugin-SubRequest>=0.15

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
