COMMENT =		C++ library for accessing SONOS devices
DIST_TUPLE =		github	janbar	noson	2.12.7	.
CATEGORIES =		audio net

SHARED_LIBS =		noson	0.1	# 0.0

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc

WANTLIB =		${COMPILER_LIBCXX} FLAC FLAC++ crypto m ssl z

MODULES =		devel/cmake

LIB_DEPENDS =		audio/flac

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DBUILD_TESTING=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Pulse=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Pulse-simple=ON

.include <bsd.port.mk>
