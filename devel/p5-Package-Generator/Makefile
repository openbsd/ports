# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:31 naddy Exp $

COMMENT=		generate new packages

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Package-Generator-1.106
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=	devel/p5-Params-Util

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
