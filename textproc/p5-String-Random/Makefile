# $OpenBSD: Makefile,v 1.22 2020/11/04 10:37:20 benoit Exp $

COMMENT=	perl module for generating randoms strings

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	String-Random-0.31
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

TEST_DEPENDS =		devel/p5-Test-TrailingSpace

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
