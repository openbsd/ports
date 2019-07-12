# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:43 sthen Exp $

COMMENT =		library for nonlinear optimization

GH_ACCOUNT =		stevengj
GH_PROJECT =		nlopt
GH_TAGNAME =		v2.6.1

SHARED_LIBS =		nlopt	0.1	# 0.10.0

CATEGORIES =		math

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# LGPL 2.1+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc base-gcc

WANTLIB =		${COMPILER_LIBCXX} m

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DNLOPT_GUILE=OFF \
			-DNLOPT_LINK_PYTHON=OFF \
			-DNLOPT_MATLAB=OFF \
			-DNLOPT_OCTAVE=OFF \
			-DNLOPT_PYTHON=OFF \
			-DNLOPT_SWIG=OFF

.include <bsd.port.mk>
