# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:31 ajacoutot Exp $

COMMENT=        wrapper around File::Find

MODULES=	cpan
DISTNAME=	File-Finder-0.53
REVISION=	1
CATEGORIES=     devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV=	TEST_VERBOSE=Yes
REGRESS_DEPENDS=	devel/p5-Test-Distribution
.include <bsd.port.mk>
