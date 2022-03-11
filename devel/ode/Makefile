COMMENT =	high performance library for simulating rigid body dynamics
SHARED_LIBS += 	ode	4.0	# 8.0
DISTNAME = 	ode-0.16.2
CATEGORIES =	devel

HOMEPAGE =	https://www.ode.org/

MAINTAINER = 	Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES =	https://bitbucket.org/odedevs/ode/downloads/

# LGPLv2.1+ / 3-clause BSD
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU X11 X11-xcb Xdamage Xext Xfixes Xxf86vm
WANTLIB += c drm expat glapi m pthread ${COMPILER_LIBCXX} xcb xcb-dri2
WANTLIB += xcb-glx xcb-dri3 xcb-present xcb-sync xcb-xfixes xshmfence z

COMPILER =		base-clang ports-gcc base-gcc

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--enable-double-precision
CONFIGURE_ENV+= 	CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib" \
			LIBS="-lm"
AUTOCONF_VERSION = 	2.69
AUTOMAKE_VERSION = 	1.11

CXXFLAGS += 		-Wno-c++11-narrowing

post-extract:
	rm ${WRKSRC}/include/ode/precision.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/
	${INSTALL_PROGRAM} ${WRKBUILD}/ode/demo/.libs/demo_* \
		 ${PREFIX}/share/examples/ode/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/textures/
	${INSTALL_DATA} ${WRKSRC}/drawstuff/textures/* \
		${PREFIX}/share/examples/ode/textures/

.include <bsd.port.mk>
