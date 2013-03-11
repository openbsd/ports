# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:47 espie Exp $

COMMENT=		backend for searching www.ebay.com

DISTNAME=		WWW-Search-Ebay-3.021
REVISION=		0
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		www/p5-WWW-Search
TEST_DEPENDS=	devel/p5-IO-Capture

MAKE_ENV+=		TEST_POD="Yes"

.include <bsd.port.mk>
