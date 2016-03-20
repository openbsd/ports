# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:10 naddy Exp $

COMMENT=	mock database driver for testing

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	DBD-Mock-1.45
CATEGORIES=	databases devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI>=1.3

CONFIGURE_STYLE=modbuild

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
