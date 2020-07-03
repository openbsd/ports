# $OpenBSD: Makefile,v 1.11 2020/07/03 21:46:06 sthen Exp $

COMMENT=		search and manage eBay accounts

DISTNAME=		WWW-Ebay-1.003
CATEGORIES=		www
REVISION=		0

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		security/p5-Crypt-SSLeay \
			www/p5-HTML-Form \
			www/p5-WWW-Search-Ebay \
			x11/p5-Tk
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		converters/p5-DateManip \
			devel/p5-IO-Capture

# In order to run all the automatic tests for this distribution,
# you should set the following environment variables:
# EBAY_USERID and EBAY_PASSWORD
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
