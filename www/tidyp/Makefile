# $OpenBSD: Makefile,v 1.11 2019/05/13 14:30:17 abieber Exp $

COMMENT=	validate, correct and pretty-print HTML

V=		1.04
DISTNAME=	tidyp-$V
REVISION=	2
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

.include <bsd.port.mk>
