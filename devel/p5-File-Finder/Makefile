# $OpenBSD: Makefile,v 1.4 2010/07/13 19:46:12 sthen Exp $

COMMENT=        wrapper around File::Find

MODULES=	cpan
DISTNAME=	File-Finder-0.53
REVISION=	0
CATEGORIES=     devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV=	TEST_VERBOSE=Yes
REGRESS_DEPENDS=	::devel/p5-Test-Distribution
.include <bsd.port.mk>
