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

# was at https://github.com/downloads/petdance/tidyp/
SITES=		https://spacehopper.org/mirrors/
PORTROACH=	site:https://github.com/petdance/tidyp/releases/

CONFIGURE_STYLE=gnu

# Upstream references a non-existing test script...
NO_TEST=	Yes

.include <bsd.port.mk>
