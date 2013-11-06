# $OpenBSD: Makefile,v 1.8 2013/11/06 17:10:06 benoit Exp $

COMMENT=	group together related tests in a test suite

MODULES=	cpan
DISTNAME =	Test-Group-0.19
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS =	devel/p5-File-Slurp \
		devel/p5-Test-Cmd
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
