# $OpenBSD: Makefile,v 1.8 2010/07/03 03:43:50 jim Exp $

COMMENT= 	serving static pages with catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Static-Simple-0.29
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Moose \
		::devel/p5-MooseX-Types \
		::devel/p5-namespace-autoclean \
		:p5-Catalyst-Runtime->=5.80008:www/p5-Catalyst-Runtime \
		:p5-MIME-Types->=1.25:mail/p5-MIME-Types
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=:p5-Catalyst-Plugin-SubRequest->=0.15:www/p5-Catalyst-Plugin-SubRequest

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
