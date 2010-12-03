# $OpenBSD: Makefile,v 1.14 2010/12/03 11:44:29 ajacoutot Exp $

COMMENT=	curses based user interface framework for Perl

MODULES=	cpan
DISTNAME=	Curses-UI-0.9607
REVISION=	0

CATEGORIES=	devel
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-Curses \
		devel/p5-Term-ReadKey
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-Pod

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
