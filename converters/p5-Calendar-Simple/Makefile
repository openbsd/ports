# $OpenBSD: Makefile,v 1.10 2013/10/11 23:48:13 naddy Exp $

COMMENT= 	simple calendar month

DISTNAME=	Calendar-Simple-1.21
REVISION=	0
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-DateTime

CONFIGURE_STYLE= modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
