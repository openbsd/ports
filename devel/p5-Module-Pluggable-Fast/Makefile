# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:00 sthen Exp $

COMMENT=	instantiate plugins as they're found

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Module-Pluggable-Fast-0.19
CATEGORIES=	devel
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	p5-Universal-exports-<=0.05|p5-Universal-require-*:devel/p5-Universal-require

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
