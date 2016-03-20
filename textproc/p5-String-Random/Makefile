# $OpenBSD: Makefile,v 1.18 2016/03/20 19:57:08 naddy Exp $

COMMENT=	perl module for generating randoms strings

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	String-Random-0.29
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	modbuild

TEST_DEPENDS =		devel/p5-Test-TrailingSpace

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
