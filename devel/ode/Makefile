# $OpenBSD: Makefile,v 1.9 2015/01/21 04:55:43 kirby Exp $

COMMENT =	high performance library for simulating rigid body dynamics
SHARED_LIBS += 	ode	2.0	# 5.0
DISTNAME = 	ode-0.13.1
CATEGORIES =	devel

HOMEPAGE =	http://www.ode.org/

MAINTAINER = 	Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES =	https://bitbucket.org/odedevs/ode/downloads/ \
		${MASTER_SITE_SOURCEFORGE:=opende/}

# LGPLv2.1+ / 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes Xxf86vm
WANTLIB += c drm glapi m pthread pthread-stubs stdc++ xcb xcb-dri2
WANTLIB += xcb-glx

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED}
CONFIGURE_ENV+= 	CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib" \
			LIBS="-lm"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/
	${INSTALL_PROGRAM} ${WRKBUILD}/ode/demo/.libs/demo_* \
		 ${PREFIX}/share/examples/ode/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/textures/
	${INSTALL_DATA} ${WRKSRC}/drawstuff/textures/* \
		${PREFIX}/share/examples/ode/textures/


.include <bsd.port.mk>
