# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT= 	sends test results to cpan-testers@perl.org

MODULES=	cpan
DISTNAME=	Test-Reporter-1.5201
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	TEST_POD=1 \
		AUTHOR_TESTING=1

.include <bsd.port.mk>
