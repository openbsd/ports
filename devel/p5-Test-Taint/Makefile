# $OpenBSD: Makefile,v 1.4 2007/09/16 02:53:10 merdely Exp $

SHARED_ONLY=	Yes

COMMENT= 	tools to test taintedness

MODULES=	cpan
DISTNAME=	Test-Taint-1.04
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
