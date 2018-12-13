# $OpenBSD: Makefile,v 1.1.1.1 2018/12/13 09:35:32 kn Exp $

COMMENT =		library for nonlinear optimization

V =			2.5.0
GH_ACCOUNT =		stevengj
GH_PROJECT =		nlopt
GH_TAGNAME =		v${V}

SHARED_LIBS =		nlopt	0.0	# 0.9

CATEGORIES =		math

HOMEPAGE =		http://ab-initio.mit.edu/nlopt

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# LGPL 2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DNLOPT_GUILE=OFF \
			-DNLOPT_LINK_PYTHON=OFF \
			-DNLOPT_MATLAB=OFF \
			-DNLOPT_OCTAVE=OFF \
			-DNLOPT_PYTHON=OFF \
			-DNLOPT_SWIG=OFF

.include <bsd.port.mk>
