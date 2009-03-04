# $OpenBSD: Makefile,v 1.1.1.1 2009/03/04 20:33:32 jasper Exp $

COMMENT=		backend for searching www.ebay.com

DISTNAME=		WWW-Search-Ebay-3.008
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		::www/p5-WWW-Search

MAKE_ENV+=		TEST_POD="Yes"

.include <bsd.port.mk>
