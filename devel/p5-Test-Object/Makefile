# $OpenBSD: Makefile,v 1.6 2010/10/18 17:48:08 espie Exp $

COMMENT=	thoroughly testing objects via registered handlers

MODULES=	cpan

DISTNAME=	Test-Object-0.07
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	AUTOMATED_TESTING=Yes TEST_POD=Yes

.include <bsd.port.mk>
