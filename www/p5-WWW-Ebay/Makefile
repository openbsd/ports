# $OpenBSD: Makefile,v 1.1.1.1 2010/01/06 09:44:21 jasper Exp $

COMMENT=		search and manage eBay accounts

DISTNAME=		WWW-Ebay-0.091
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		::security/p5-Crypt-SSLeay \
			::www/p5-WWW-Search-Ebay \
			::x11/p5-Tk
REGRESS_DEPENDS=	::devel/p5-IO-Capture

# In order to run all the automatic tests for this distribution,
# you should set the following environment variables:
# EBAY_USERID and EBAY_PASSWORD
REGRESS_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
