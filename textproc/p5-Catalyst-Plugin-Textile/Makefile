# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:02 sthen Exp $

COMMENT=	Textile for Catalyst

DISTNAME=	Catalyst-Plugin-Textile-0.01
REVISION=	3
CATEGORIES=	textproc

# Same as Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	textproc/p5-Text-Textile \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
