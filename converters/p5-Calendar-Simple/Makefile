# $OpenBSD: Makefile,v 1.14 2020/07/03 21:44:31 sthen Exp $

COMMENT= 	simple calendar month

DISTNAME=	Calendar-Simple-1.23
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-DateTime

CONFIGURE_STYLE= modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
