# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:03 sthen Exp $

COMMENT=		generate new packages

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Package-Generator-1.106
CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	devel/p5-Params-Util

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
