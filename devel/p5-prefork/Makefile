# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:38 ajacoutot Exp $

COMMENT=	optimized module loading

MODULES=	cpan
DISTNAME=	prefork-1.02
REVISION=	0
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
