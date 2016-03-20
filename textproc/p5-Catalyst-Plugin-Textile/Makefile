# $OpenBSD: Makefile,v 1.13 2016/03/20 19:57:04 naddy Exp $

COMMENT=	Textile for Catalyst

DISTNAME=	Catalyst-Plugin-Textile-0.01
REVISION=	3
CATEGORIES=	textproc

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	textproc/p5-Text-Textile \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
