# $OpenBSD: Makefile,v 1.17 2015/12/27 10:05:02 benoit Exp $

COMMENT=	perl module for generating randoms strings

MODULES=	cpan
DISTNAME =	String-Random-0.29
CATEGORIES=	textproc

# perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	modbuild

TEST_DEPENDS =		devel/p5-Test-TrailingSpace

MAKE_ENV +=		TEST_POD=1

.include <bsd.port.mk>
