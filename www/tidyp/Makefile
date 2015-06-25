# $OpenBSD: Makefile,v 1.10 2015/06/25 08:28:58 sthen Exp $

COMMENT=	validate, correct and pretty-print HTML

V=		1.04
DISTNAME=	tidyp-$V
REVISION=	1
EPOCH=		0
SHARED_LIBS +=  tidyp-$V                  0.0 # 0.0
SHARED_LIBS +=  tidyp                     0.0 # 0.0
CATEGORIES=	www

HOMEPAGE=	http://www.tidyp.com/

# BSD-like, badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	https://github.com/downloads/petdance/tidyp/

CONFIGURE_STYLE=gnu


# Upstream references a non-existing test script...
NO_TEST=	Yes

# Allow transparant usage of tidy to tinyp.
post-install:
	ln -s ${TRUEPREFIX}/bin/tidyp ${PREFIX}/bin/tidy

.include <bsd.port.mk>
