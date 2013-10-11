# $OpenBSD: Makefile,v 1.11 2013/10/11 23:51:08 naddy Exp $

COMMENT=	Textile for Catalyst

DISTNAME=	Catalyst-Plugin-Textile-0.01
REVISION=	2
CATEGORIES=	textproc

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	textproc/p5-Text-Textile \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
