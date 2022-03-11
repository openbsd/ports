COMMENT =		library for nonlinear optimization

GH_ACCOUNT =		stevengj
GH_PROJECT =		nlopt
GH_TAGNAME =		v2.7.0

SHARED_LIBS =		nlopt	1.0	# 0.11.0

CATEGORIES =		math

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
