# $OpenBSD: Makefile,v 1.12 2016/03/20 19:57:23 naddy Exp $

COMMENT=		backend for searching www.ebay.com

DISTNAME =		WWW-Search-Ebay-3.042
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		www/p5-WWW-Search
BUILD_DEPENDS=		devel/p5-Module-Install
TEST_DEPENDS=		devel/p5-IO-Capture

MAKE_ENV+=		TEST_POD="Yes"

.include <bsd.port.mk>
