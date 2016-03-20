# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:07 naddy Exp $

COMMENT= 	simple calendar month

DISTNAME=	Calendar-Simple-1.21
REVISION=	0
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-DateTime

CONFIGURE_STYLE= modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
