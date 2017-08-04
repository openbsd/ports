# $OpenBSD: Makefile,v 1.13 2017/08/04 09:27:03 bluhm Exp $

COMMENT=		backend for searching www.ebay.com

DISTNAME =		WWW-Search-Ebay-3.042
REVISION =		0
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		www/p5-WWW-Search
TEST_DEPENDS=		devel/p5-IO-Capture

MAKE_ENV+=		TEST_POD="Yes"

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
