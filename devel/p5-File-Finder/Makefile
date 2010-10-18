# $OpenBSD: Makefile,v 1.5 2010/10/18 17:48:00 espie Exp $

COMMENT=        wrapper around File::Find

MODULES=	cpan
DISTNAME=	File-Finder-0.53
REVISION=	0
CATEGORIES=     devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV=	TEST_VERBOSE=Yes
REGRESS_DEPENDS=	::devel/p5-Test-Distribution
.include <bsd.port.mk>
