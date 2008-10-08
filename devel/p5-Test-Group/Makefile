# $OpenBSD: Makefile,v 1.2 2008/10/08 21:38:44 simon Exp $

COMMENT=	group together related tests in a test suite

MODULES=	cpan
DISTNAME=	Test-Group-0.14
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	::devel/p5-File-Slurp
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
