# $OpenBSD: Makefile,v 1.7 2010/10/18 17:48:11 espie Exp $

COMMENT=	optimized module loading

MODULES=	cpan
DISTNAME=	prefork-1.02
CATEGORIES=	devel
USE_GROFF =	Yes

CPAN_AUTHOR=	ADAMK

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
