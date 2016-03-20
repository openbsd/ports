# $OpenBSD: Makefile,v 1.14 2016/03/20 19:57:15 naddy Exp $

COMMENT=	plugin to Data::FormValidator for catalyst (deprecated)

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-FormValidator-0.094
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		devel/p5-Data-FormValidator \
		devel/p5-Moose \
		devel/p5-MRO-Compat

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
