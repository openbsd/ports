# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:58 sthen Exp $

COMMENT=	Catalyst views using Mason components

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Catalyst-View-Mason-0.19
CATEGORIES=	www
REVISION =	0

# Artistic + GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		www/p5-HTML-Mason \
		devel/p5-MRO-Compat
TEST_DEPENDS=devel/p5-IO-Capture \
		devel/p5-Test-File

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
