# $OpenBSD: Makefile,v 1.5 2014/03/18 10:18:25 ajacoutot Exp $

COMMENT =		3D fractal renderer

V =			1.15
DISTNAME =		mandelbulber${V}
PKGNAME =		mandelbulber-${V}
REVISION =		0

CATEGORIES =		graphics

HOMEPAGE =		http://mandelbulber.com

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atk-1.0 c cairo fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread
WANTLIB += stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=mandelbulber/}

LIB_DEPENDS =		graphics/png \
			x11/gtk+2

RUN_DEPENDS =		devel/desktop-file-utils

NO_TEST =		Yes

MAKE_FLAGS =		CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

USE_GMAKE =		Yes

MAKE_FILE =		makefile
WRKSRC =		${WRKDIST}/makefiles

post-extract:
	perl -pi -e 's#/usr/share/#${PREFIX}/share/#;' \
		${WRKDIST}/usr/share/defaults ${WRKDIST}/mandelbulber.desktop \
		${WRKDIST}/usr/share/examples/*.fract \
		${WRKDIST}/src/interface.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mandelbulber ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/mandelbulber
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKDIST}/usr/share/defaults \
		${PREFIX}/share/mandelbulber
	${INSTALL_DATA} ${WRKDIST}/mandelbulber.desktop \
		${PREFIX}/share/applications
.for dir in exampleKeyframes examples icons textures
	${INSTALL_DATA_DIR} ${PREFIX}/share/mandelbulber/${dir}
	${INSTALL_DATA} ${WRKDIST}/usr/share/${dir}/* \
	${PREFIX}/share/mandelbulber/${dir}
.endfor

.include <bsd.port.mk>
