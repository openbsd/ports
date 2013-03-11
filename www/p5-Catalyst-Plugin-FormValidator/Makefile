# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:44 espie Exp $

COMMENT=	plugin to Data::FormValidator for catalyst (deprecated)

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-FormValidator-0.094
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Data-FormValidator \
		devel/p5-Moose \
		devel/p5-MRO-Compat

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
