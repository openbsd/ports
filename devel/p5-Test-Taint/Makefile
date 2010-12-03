# $OpenBSD: Makefile,v 1.10 2010/12/03 11:44:37 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT= 	tools to test taintedness

MODULES=	cpan
DISTNAME=	Test-Taint-1.04
REVISION=	4
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
