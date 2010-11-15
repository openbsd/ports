# $OpenBSD: Makefile,v 1.4 2010/11/15 00:22:52 espie Exp $

COMMENT=	mock database driver for testing

MODULES=	cpan
DISTNAME=	DBD-Mock-1.37
CATEGORIES=	databases devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-DBI

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
