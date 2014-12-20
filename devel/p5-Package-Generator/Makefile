# $OpenBSD: Makefile,v 1.8 2014/12/20 08:45:31 benoit Exp $

COMMENT=		generate new packages

MODULES=		cpan
DISTNAME =		Package-Generator-1.106
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=	devel/p5-Params-Util

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
