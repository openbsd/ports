# $OpenBSD: Makefile,v 1.15 2017/07/26 22:45:18 sthen Exp $

COMMENT =	high performance library for simulating rigid body dynamics
SHARED_LIBS += 	ode	3.0	# 6.0
DISTNAME = 	ode-0.14
CATEGORIES =	devel
REVISION =      0

HOMEPAGE =	http://www.ode.org/

MAINTAINER = 	Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES =	https://bitbucket.org/odedevs/ode/downloads/ \
		${MASTER_SITE_SOURCEFORGE:=opende/}

# LGPLv2.1+ / 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU X11 X11-xcb Xdamage Xext Xfixes Xxf86vm
WANTLIB += c drm expat glapi m pthread ${COMPILER_LIBCXX} xcb xcb-dri2
WANTLIB += xcb-glx

BUILD_DEPENDS = 	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV+= 	CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib" \
			LIBS="-lm"
AUTOCONF_VERSION = 	2.69
AUTOMAKE_VERSION = 	1.11

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -fi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/
	${INSTALL_PROGRAM} ${WRKBUILD}/ode/demo/.libs/demo_* \
		 ${PREFIX}/share/examples/ode/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/textures/
	${INSTALL_DATA} ${WRKSRC}/drawstuff/textures/* \
		${PREFIX}/share/examples/ode/textures/


.include <bsd.port.mk>
