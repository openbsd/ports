# $OpenBSD: Makefile,v 1.17 2019/07/12 20:50:52 sthen Exp $

COMMENT=	map subrequests to actions in Catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-SubRequest-0.17
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime>=5.7012

MAKE_ENV=	TEST_POD=yes

.include <bsd.port.mk>
