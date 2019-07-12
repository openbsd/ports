# $OpenBSD: Makefile,v 1.20 2019/07/12 20:44:43 sthen Exp $

COMMENT =	high performance library for simulating rigid body dynamics
SHARED_LIBS += 	ode	3.0	# 6.0
DISTNAME = 	ode-0.14
CATEGORIES =	devel
REVISION =      2

HOMEPAGE =	http://www.ode.org/

MAINTAINER = 	Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES =	https://bitbucket.org/odedevs/ode/downloads/ \
		${MASTER_SITE_SOURCEFORGE:=opende/}

# LGPLv2.1+ / 3-clause BSD
PERMIT_PACKAGE =	Yes

WANTLIB += GL GLU X11 X11-xcb Xdamage Xext Xfixes Xxf86vm
WANTLIB += c drm expat glapi m pthread ${COMPILER_LIBCXX} xcb xcb-dri2
WANTLIB += xcb-glx

COMPILER =		base-clang ports-gcc base-gcc

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV+= 	CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib" \
			LIBS="-lm"
AUTOCONF_VERSION = 	2.69
AUTOMAKE_VERSION = 	1.11

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/
	${INSTALL_PROGRAM} ${WRKBUILD}/ode/demo/.libs/demo_* \
		 ${PREFIX}/share/examples/ode/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/textures/
	${INSTALL_DATA} ${WRKSRC}/drawstuff/textures/* \
		${PREFIX}/share/examples/ode/textures/


.include <bsd.port.mk>
