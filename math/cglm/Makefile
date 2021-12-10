# $OpenBSD: Makefile,v 1.1.1.1 2021/12/10 13:27:02 op Exp $

COMMENT =	highly optimized graphics math library

GH_ACCOUNT =	recp
GH_PROJECT =	cglm
GH_TAGNAME =	v0.8.4

SHARED_LIBS =	cglm	0.0	# 0.8.4

CATEGORIES =	math

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DCGLM_USE_C99=ON \
			-DCGLM_USE_TEST=ON

.include <bsd.port.mk>
