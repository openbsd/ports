# $OpenBSD: Makefile,v 1.2 2019/07/12 20:43:45 sthen Exp $

COMMENT =	placement tool used in VLSI design

GH_ACCOUNT =	rubund
GH_PROJECT =	graywolf
GH_TAGNAME =	0.1.6

SHARED_LIBS +=  ycadgraywolf	0.0	# 0.0

CATEGORIES =	cad

MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	ICE SM X11 Xext c gsl gslcblas m

MODULES =	devel/cmake

LIB_DEPENDS =	devel/gsl

# Really really not C99
CONFIGURE_ARGS =	-DCMAKE_C_FLAGS="${CFLAGS} -Wno-return-type"

NO_TEST =	Yes

post-install:
	@cd ${PREFIX}/lib/graywolf/bin/flow && \
	    ln -sf flow.noroute flow

.include <bsd.port.mk>
