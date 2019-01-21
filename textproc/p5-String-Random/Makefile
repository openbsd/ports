# $OpenBSD: Makefile,v 1.19 2019/01/21 16:55:55 cwen Exp $

COMMENT=	perl module for generating randoms strings

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	String-Random-0.30
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	modbuild

TEST_DEPENDS =		devel/p5-Test-TrailingSpace

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
