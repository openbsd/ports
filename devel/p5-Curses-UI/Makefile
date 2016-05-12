# $OpenBSD: Makefile,v 1.18 2016/05/12 14:00:13 espie Exp $

COMMENT=	curses based user interface framework for Perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Curses-UI-0.9609
REVISION =	0

CATEGORIES=	devel

RUN_DEPENDS=	devel/p5-Curses
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-Pod

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
