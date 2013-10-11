# $OpenBSD: Makefile,v 1.7 2013/10/11 23:49:18 naddy Exp $

COMMENT=	group together related tests in a test suite

MODULES=	cpan
DISTNAME=	Test-Group-0.14
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	devel/p5-File-Slurp
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
