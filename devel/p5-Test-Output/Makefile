# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT= 	test output of other modules

MODULES=	cpan
DISTNAME=	Test-Output-0.16
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/p5-Sub-Exporter \
			devel/p5-Test-Tester

MAKE_ENV=		TEST_POD=Yes
.include <bsd.port.mk>
