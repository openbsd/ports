# $OpenBSD: Makefile,v 1.5 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT=		search and manage eBay accounts

DISTNAME=		WWW-Ebay-0.094
REVISION=		0
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		security/p5-Crypt-SSLeay \
			www/p5-WWW-Search-Ebay \
			x11/p5-Tk
REGRESS_DEPENDS=	converters/p5-DateManip \
			devel/p5-IO-Capture

# In order to run all the automatic tests for this distribution,
# you should set the following environment variables:
# EBAY_USERID and EBAY_PASSWORD
REGRESS_IS_INTERACTIVE= Yes

.include <bsd.port.mk>
