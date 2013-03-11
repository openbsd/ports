# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:20 espie Exp $

COMMENT=		generate new packages

MODULES=		cpan
DISTNAME=		Package-Generator-0.103
CATEGORIES=		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=	devel/p5-Params-Util

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
