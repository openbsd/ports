# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:15 espie Exp $

COMMENT=	curses based user interface framework for Perl

MODULES=	cpan
DISTNAME=	Curses-UI-0.9609

CATEGORIES=	devel

RUN_DEPENDS=	devel/p5-Curses \
		devel/p5-Term-ReadKey
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-Pod

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
