# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:36 ajacoutot Exp $

COMMENT=	group together related tests in a test suite

MODULES=	cpan
DISTNAME=	Test-Group-0.14
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=modbuild
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-File-Slurp
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
