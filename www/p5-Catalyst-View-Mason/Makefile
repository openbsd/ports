# $OpenBSD: Makefile,v 1.9 2015/01/21 14:42:33 sthen Exp $

COMMENT=	Catalyst views using Mason components

MODULES=	cpan
DISTNAME=	Catalyst-View-Mason-0.18
CATEGORIES=	www

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		www/p5-HTML-Mason \
		devel/p5-MRO-Compat
TEST_DEPENDS=devel/p5-IO-Capture \
		devel/p5-Test-File

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
