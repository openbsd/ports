# $OpenBSD: Makefile,v 1.6 2010/10/18 17:06:06 espie Exp $

COMMENT= 	simple calendar month

DISTNAME=	Calendar-Simple-1.21
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-DateTime

CONFIGURE_STYLE= modbuild
USE_GROFF =	Yes
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
