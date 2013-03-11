# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:17 espie Exp $

COMMENT=        wrapper around File::Find

MODULES=	cpan
DISTNAME=	File-Finder-0.53
REVISION=	1
CATEGORIES=     devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes

MAKE_ENV=	TEST_VERBOSE=Yes
TEST_DEPENDS=	devel/p5-Test-Distribution
.include <bsd.port.mk>
