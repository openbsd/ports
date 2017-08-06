# $OpenBSD: Makefile,v 1.14 2017/08/06 20:12:57 bluhm Exp $

COMMENT=		backend for searching www.ebay.com

DISTNAME =		WWW-Search-Ebay-3.042
REVISION =		1
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS =		devel/p5-Module-Install-AuthorTests
RUN_DEPENDS=		www/p5-WWW-Search
TEST_DEPENDS=		devel/p5-IO-Capture

MAKE_ENV+=		TEST_POD="Yes"

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
