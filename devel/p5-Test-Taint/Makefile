# $OpenBSD: Makefile,v 1.5 2008/10/02 20:35:10 simon Exp $

SHARED_ONLY=	Yes

COMMENT= 	tools to test taintedness

MODULES=	cpan
DISTNAME=	Test-Taint-1.04
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
