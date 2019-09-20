# $OpenBSD: Makefile,v 1.13 2019/09/20 16:04:59 fcambus Exp $

COMMENT=	validate, correct and pretty-print HTML

V=		1.04
DISTNAME=	tidyp-$V
REVISION=	3
EPOCH=		0
SHARED_LIBS +=  tidyp-$V                  0.0 # 0.0
SHARED_LIBS +=  tidyp                     0.0 # 0.0
CATEGORIES=	www

HOMEPAGE=	https://github.com/petdance/tidyp

# BSD-like, badly worded
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MASTER_SITES=	https://github.com/downloads/petdance/tidyp/

CONFIGURE_STYLE=gnu

# Upstream references a non-existing test script...
NO_TEST=	Yes

.include <bsd.port.mk>
