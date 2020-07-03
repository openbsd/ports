# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:05 sthen Exp $

COMMENT=		generate new packages

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Package-Generator-1.106
CATEGORIES=		devel
REVISION =		0

# perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	devel/p5-Params-Util

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
