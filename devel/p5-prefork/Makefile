# $OpenBSD: Makefile,v 1.5 2007/09/16 02:53:10 merdely Exp $

COMMENT=	optimized module loading

MODULES=	cpan
DISTNAME=	prefork-1.01
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

CPAN_AUTHOR=	ADAMK

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
