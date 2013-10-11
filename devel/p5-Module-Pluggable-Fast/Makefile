# $OpenBSD: Makefile,v 1.13 2013/10/11 23:48:58 naddy Exp $

COMMENT=	instantiate plugins as they're found

MODULES=	cpan
DISTNAME=	Module-Pluggable-Fast-0.18
REVISION=	3
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	p5-Universal-exports-<=0.05|p5-Universal-require-*:devel/p5-Universal-require

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
