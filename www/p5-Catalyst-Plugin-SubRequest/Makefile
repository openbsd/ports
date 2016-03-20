# $OpenBSD: Makefile,v 1.16 2016/03/20 19:57:16 naddy Exp $

COMMENT=	map subrequests to actions in Catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-SubRequest-0.17
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime>=5.7012

MAKE_ENV=	TEST_POD=yes

.include <bsd.port.mk>
