# $OpenBSD: Makefile,v 1.16 2020/02/11 15:36:05 benoit Exp $

COMMENT=		backend for searching www.ebay.com

DISTNAME=		WWW-Search-Ebay-3.054
CATEGORIES=		www

# Perl
PERMIT_PACKAGE=		Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		devel/p5-Module-Install-AuthorTests

RUN_DEPENDS=		converters/p5-DateManip \
			www/p5-HTML-Tree \
			www/p5-LWP-Protocol-https \
			www/p5-WWW-Search>=2.517 \
			www/p5-libwww

# Tests need network access
TEST_DEPENDS=		devel/p5-IO-Capture

MAKE_ENV+=		TEST_POD="Yes"

CONFIGURE_STYLE=	modinst

.include <bsd.port.mk>
