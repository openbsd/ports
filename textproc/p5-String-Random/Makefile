# $OpenBSD: Makefile,v 1.21 2020/07/03 21:45:49 sthen Exp $

COMMENT=	perl module for generating randoms strings

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	String-Random-0.30
CATEGORIES=	textproc
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

TEST_DEPENDS =		devel/p5-Test-TrailingSpace

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
