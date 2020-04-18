# $OpenBSD: Makefile,v 1.4 2020/04/18 23:26:00 kn Exp $

COMMENT =		library for nonlinear optimization

GH_ACCOUNT =		stevengj
GH_PROJECT =		nlopt
GH_TAGNAME =		v2.6.2

SHARED_LIBS =		nlopt	0.2	# 0.10.0

CATEGORIES =		math

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# LGPL 2.1+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc base-gcc

WANTLIB =		${COMPILER_LIBCXX} m

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DNLOPT_GUILE=OFF \
			-DNLOPT_MATLAB=OFF \
			-DNLOPT_OCTAVE=OFF \
			-DNLOPT_PYTHON=OFF \
			-DNLOPT_SWIG=OFF

.include <bsd.port.mk>
