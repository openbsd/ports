# $OpenBSD: Makefile,v 1.9 2013/03/11 01:30:27 espie Exp $

COMMENT= 	simple calendar month

DISTNAME=	Calendar-Simple-1.21
REVISION=	0
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-DateTime

CONFIGURE_STYLE= modbuild
USE_GROFF =	Yes
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
