COMMENT =	DSP IIR realtime filter library

V =		1.9.5
PKGNAME =	iir1-${V}
DIST_TUPLE +=	github berndporr iir1 ${V} .

SHARED_LIBS =	iir	0.0	# 1.9.5

CATEGORIES =	audio
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

.include <bsd.port.mk>
