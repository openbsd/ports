# $OpenBSD: Makefile,v 1.13 2019/07/12 20:43:49 sthen Exp $

COMMENT= 	simple calendar month

DISTNAME=	Calendar-Simple-1.23
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-DateTime

CONFIGURE_STYLE= modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
