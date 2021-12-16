# $OpenBSD: Makefile,v 1.1.1.1 2021/12/16 22:48:03 kn Exp $

COMMENT =		guidelines support library
GH_ACCOUNT =		microsoft
GH_PROJECT =		GSL
V =			3.1.0
GH_TAGNAME =		v${V}
DISTNAME =		microsoft-gsl-${V}
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# "ninja: no work to do."
NO_BUILD =		Yes
# just header files
PKG_ARCH =		*

MODULES =		devel/cmake

# fetches gtest via git during configure, needs patching to use our port
CONFIGURE_ARGS =	-DGSL_TEST=OFF
NO_TEST =		Yes

.include <bsd.port.mk>
