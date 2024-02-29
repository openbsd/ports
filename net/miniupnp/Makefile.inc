CATEGORIES=	net

HOMEPAGE=	https://miniupnp.tuxfamily.org/

# BSD
PERMIT_PACKAGE=	Yes

.if !defined(GH_ACCOUNT) && !defined(DIST_TUPLE)
SITES?=		https://miniupnp.tuxfamily.org/files/
.endif
NO_TEST=	Yes
