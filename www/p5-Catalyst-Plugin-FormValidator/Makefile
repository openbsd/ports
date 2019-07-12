# $OpenBSD: Makefile,v 1.15 2019/07/12 20:50:51 sthen Exp $

COMMENT=	plugin to Data::FormValidator for catalyst (deprecated)

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-FormValidator-0.094
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Data-FormValidator \
		devel/p5-Moose \
		devel/p5-MRO-Compat

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
