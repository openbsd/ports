# $OpenBSD: Makefile,v 1.20 2020/07/03 21:44:45 sthen Exp $

COMMENT=	curses based user interface framework for Perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Curses-UI-0.9609
REVISION =	1

CATEGORIES=	devel

RUN_DEPENDS=	devel/p5-Curses
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-Pod

# perl
PERMIT_PACKAGE=	Yes

MAKE_ENV=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
