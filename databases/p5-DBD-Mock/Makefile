# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:24 ajacoutot Exp $

COMMENT=	mock database driver for testing

MODULES=	cpan
DISTNAME=	DBD-Mock-1.37
REVISION=	0
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
