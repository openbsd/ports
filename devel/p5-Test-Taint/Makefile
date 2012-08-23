# $OpenBSD: Makefile,v 1.11 2012/08/23 15:08:05 sthen Exp $

SHARED_ONLY=	Yes

COMMENT= 	tools to test taintedness

MODULES=	cpan
DISTNAME=	Test-Taint-1.04
REVISION=	5
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
