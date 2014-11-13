# $OpenBSD: Makefile,v 1.14 2014/11/13 10:30:35 benoit Exp $

COMMENT=	instantiate plugins as they're found

MODULES=	cpan
DISTNAME =	Module-Pluggable-Fast-0.19
CATEGORIES=	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	p5-Universal-exports-<=0.05|p5-Universal-require-*:devel/p5-Universal-require

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
