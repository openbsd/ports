# $OpenBSD: Makefile,v 1.9 2020/07/03 21:45:55 sthen Exp $

COMMENT=	UUID for session ID generation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Apache-Session-Generate-UUID-0.2
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	devel/p5-Data-UUID \
		www/p5-Apache-Session
TEST_DEPENDS=devel/p5-Test-Deep \
		devel/p5-Test-Exception \
		devel/p5-Test-Group

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
