# $OpenBSD: Makefile,v 1.5 2010/10/25 10:24:48 jasper Exp $

COMMENT=		backend for searching www.ebay.com

DISTNAME=		WWW-Search-Ebay-3.021
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =	Yes

RUN_DEPENDS=		::www/p5-WWW-Search
REGRESS_DEPENDS=	::devel/p5-IO-Capture

MAKE_ENV+=		TEST_POD="Yes"

.include <bsd.port.mk>
