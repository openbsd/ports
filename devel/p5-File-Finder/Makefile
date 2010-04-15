# $OpenBSD: Makefile,v 1.3 2010/04/15 13:56:35 ajacoutot Exp $

COMMENT=        wrapper around File::Find

MODULES=	cpan
DISTNAME=	File-Finder-0.53
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=     devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_ENV=	TEST_VERBOSE=Yes
REGRESS_DEPENDS=	::devel/p5-Test-Distribution
.include <bsd.port.mk>
