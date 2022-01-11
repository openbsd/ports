# $OpenBSD: Makefile,v 1.158 2022/01/11 15:11:08 landry Exp $

COMMENT =	Firefox web browser, Extended Support Release
ONLY_FOR_ARCHS =	amd64 aarch64

MOZILLA_VERSION =	91.5.0esr
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	firefox-esr
MOZILLA_CODENAME =	browser
MOZILLA_DIST =		firefox

WRKDIST =	${WRKDIR}/${MOZILLA_DIST}-${MOZILLA_DIST_VERSION:C/esr//}
HOMEPAGE =	https://www.mozilla.org/firefox/organizations/
PKGNAME =	${MOZILLA_PROJECT}-${MOZILLA_VERSION:S/esr//}
SO_VERSION =	8.0
MOZILLA_LIBS =	xul clearkey lgpllibs mozavcodec mozavutil mozgtk mozsqlite3

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla lang/python

MODPY_RUNDEP =	No

COMPILER =	ports-clang
MODCLANG_ARCHS =	amd64 i386

# 63 requires node because why not #1483595
BUILD_DEPENDS +=	lang/node
# 63 requires cbindgen #1478813
BUILD_DEPENDS +=	devel/cbindgen>=0.19.0
#1670807
BUILD_DEPENDS +=	devel/m4

# uses pledge()
WANTLIB += X11-xcb Xcursor Xi intl xcb xcb-shm harfbuzz ${COMPILER_LIBCXX}
WANTLIB += Xcomposite Xdamage Xfixes

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODPY_BIN} ${WRKSRC}/configure.py
CONFIGURE_ARGS +=	--prefix=${PREFIX}
MAKE_ENV +=		BUILD_VERBOSE_LOG="1" CARGOFLAGS="-j${MAKE_JOBS}"
CONFIGURE_ENV +=	M4=/usr/local/bin/gm4

# avoid conflict with mainline firefox
CONFIGURE_ARGS +=	--with-app-name=${MOZILLA_PROJECT}

CONFIGURE_ARGS +=	--enable-release #1386371
CONFIGURE_ARGS +=	--enable-sandbox
CONFIGURE_ARGS +=	--enable-forkserver
CONFIGURE_ARGS +=	--with-libclang-path=${LOCALBASE}/lib

# XXX badly formed debug in libxul ?
DWZ = :
DEBUG_PACKAGES =	${BUILD_PACKAGES}
DEBUG_CONFIGURE_ARGS +=	--enable-debug-symbols \
			--disable-install-strip

post-install:
	# install prefs
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}/browser/defaults/preferences
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}/browser/defaults/preferences/all-openbsd.js
	# install distribution.ini file
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}/distribution
	echo "[Global]\nid=OpenBSD\nversion=${OSREV}\nabout=Packaged by ${MAINTAINER}\n" > \
		${PREFIX}/lib/${MOZILLA_PROJECT}/distribution/distribution.ini
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${WRKSRC}/taskcluster/docker/firefox-snap/firefox.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop

	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}/browser/chrome/icons/default/default128.png \
		${PREFIX}/share/pixmaps/${MOZILLA_PROJECT}.png

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln -f ${PREFIX}/lib/${MOZILLA_PROJECT}/browser/chrome/icons/default/default{48,}.png

.for f in unveil.content unveil.gpu unveil.main unveil.rdd unveil.socket pledge.content pledge.gpu pledge.main pledge.rdd pledge.socket
	${INSTALL_DATA} ${FILESDIR}/${f} ${PREFIX}/lib/${MOZILLA_PROJECT}/browser/defaults/preferences/
.endfor

.include <bsd.port.mk>
