# $OpenBSD: Makefile,v 1.12 2015/11/05 19:08:59 jca Exp $

COMMENT=	Textile for Catalyst

DISTNAME=	Catalyst-Plugin-Textile-0.01
REVISION=	3
CATEGORIES=	textproc

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	textproc/p5-Text-Textile \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
