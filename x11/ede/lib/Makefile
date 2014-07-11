# $OpenBSD: Makefile,v 1.2 2014/07/11 21:39:04 pascal Exp $

SHARED_ONLY =		Yes

COMMENT =		equinox desktop library

DISTNAME =		edelib-${V}

API_VER =		1.0
.for l in edelib edelib_dbus edelib_gui
SHARED_LIBS +=		$l	${API_VER}
.endfor

WANTLIB += X11 Xau Xdmcp Xext Xft Xinerama c dbus-1 fltk fltk_images
WANTLIB += fontconfig jpeg m png pthread stdc++ z

MODULES =		lang/python
BUILD_DEPENDS =		devel/jam \
			devel/doxygen,-main
LIB_DEPENDS =		x11/fltk \
			x11/dbus

MAKE_ENV =		EDE_VERSION="${FULL_V}"

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		API_VER="${API_VER}"

NO_TEST =		Yes

MODPY_ADJ_FILES =	tools/edelib-convert-icontheme \
			tools/edelib-mk-indextheme \
			tools/edelib-mime-find

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam -d x

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${ALL_FAKE_FLAGS} \
		DESTDIR=${WRKINST} jam -d x install

.include <bsd.port.mk>
