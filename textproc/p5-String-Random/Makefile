# $OpenBSD: Makefile,v 1.20 2019/07/12 21:02:27 sthen Exp $

COMMENT=	perl module for generating randoms strings

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	String-Random-0.30
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

TEST_DEPENDS =		devel/p5-Test-TrailingSpace

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
