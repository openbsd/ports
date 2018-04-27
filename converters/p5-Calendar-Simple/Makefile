# $OpenBSD: Makefile,v 1.12 2018/04/27 14:49:43 ajacoutot Exp $

COMMENT= 	simple calendar month

DISTNAME=	Calendar-Simple-1.23
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-DateTime

CONFIGURE_STYLE= modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
