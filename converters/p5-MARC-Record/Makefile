# $OpenBSD: Makefile,v 1.7 2011/03/10 18:02:57 jasper Exp $

COMMENT=	MARC (machine readable cataloging format)
CATEGORIES=	converters

DISTNAME=	MARC-Record-2.0.3

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
USE_GROFF =	Yes

CPAN_AUTHOR =	GMCHARLT

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
