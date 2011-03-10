# $OpenBSD: Makefile,v 1.1.1.1 2011/03/10 19:34:01 jasper Exp $

COMMENT=	validate, correct and pretty-print HTML

V=		1.04
DISTNAME=	tidyp-$V
SHARED_LIBS +=  tidyp-$V                  0.0 # 0.0
SHARED_LIBS +=  tidyp                     0.0 # 0.0
CATEGORIES=	www

HOMEPAGE=	http://www.tidyp.com/

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	http://github.com/downloads/petdance/tidyp/

CONFIGURE_STYLE=gnu

USE_LIBTOOL=	Yes

# Upstream references a non-existing test script...
NO_REGRESS=	Yes

.include <bsd.port.mk>
