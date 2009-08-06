# $OpenBSD: Makefile,v 1.2 2009/08/06 10:59:21 jasper Exp $

COMMENT =	high performance library for simulating rigid body dynamics
SHARED_LIBS +=  ode                  0.0      # .2.1
DISTNAME =	ode-0.11.1
PKGNAME = 	${DISTNAME}p0
CATEGORIES =	devel

MAINTAINER =	Jonathan Armani <dbd@asystant.net>
HOMEPAGE =	http://www.ode.org/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=opende/}

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		GL GLU ICE SM X11 c m pthread stdc++

USE_LIBTOOL = 		Yes
USE_X11 = 		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--enable-shared
CONFIGURE_ENV+= 	CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib" \
			LIBS="-lm"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ode
	${INSTALL_DATA} ${WRKSRC}/LICENSE.TXT ${PREFIX}/share/doc/ode/LICENSE
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/ode/README
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/
	${INSTALL_DATA} ${WRKSRC}/ode/demo/.libs/* \
		 ${PREFIX}/share/examples/ode/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ode/textures/
	${INSTALL_DATA} ${WRKSRC}/drawstuff/textures/* \
		${PREFIX}/share/examples/ode/textures/


.include <bsd.port.mk>
