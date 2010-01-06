# $OpenBSD: Makefile,v 1.2 2010/01/06 09:27:38 jasper Exp $

COMMENT=		backend for searching www.ebay.com

DISTNAME=		WWW-Search-Ebay-3.015
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
