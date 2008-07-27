# $OpenBSD: Makefile,v 1.2 2008/07/27 22:42:41 simon Exp $

COMMENT=	mock database driver for testing

MODULES=	cpan
DISTNAME=	DBD-Mock-1.37
CATEGORIES=	databases devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBI

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
