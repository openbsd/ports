# $OpenBSD: Makefile,v 1.6 2011/06/13 16:40:20 jasper Exp $

COMMENT=	mock database driver for testing

MODULES=	cpan
DISTNAME=	DBD-Mock-1.39
CATEGORIES=	databases devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-DBI>=1.3

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
