# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:47 espie Exp $

COMMENT=		search and manage eBay accounts

DISTNAME=		WWW-Ebay-0.094
REVISION=		1
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		security/p5-Crypt-SSLeay \
			www/p5-WWW-Search-Ebay \
			x11/p5-Tk
TEST_DEPENDS=	converters/p5-DateManip \
			devel/p5-IO-Capture

# In order to run all the automatic tests for this distribution,
# you should set the following environment variables:
# EBAY_USERID and EBAY_PASSWORD
TEST_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
