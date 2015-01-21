# $OpenBSD: Makefile,v 1.12 2015/01/21 14:42:33 sthen Exp $

COMMENT=	plugin to Data::FormValidator for catalyst (deprecated)

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-FormValidator-0.094
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Data-FormValidator \
		devel/p5-Moose \
		devel/p5-MRO-Compat

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
