# $OpenBSD: Makefile,v 1.5 2011/04/05 15:33:14 sthen Exp $

COMMENT=	validate, correct and pretty-print HTML

V=		1.04
DISTNAME=	tidyp-$V
EPOCH=		0
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

# Allow transparant usage of tidy to tinyp.
post-install:
	ln -s ${TRUEPREFIX}/bin/tidyp ${PREFIX}/bin/tidy

.include <bsd.port.mk>
