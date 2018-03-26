# $OpenBSD: Makefile,v 1.73 2018/03/26 16:01:17 landry Exp $

COMMENT =	Firefox web browser, Extended Support Release
ONLY_FOR_ARCHS =	amd64 i386

MOZILLA_VERSION =	52.7.3esr
MOZILLA_PROJECT =	firefox
MOZILLA_CODENAME =	browser

HOMEPAGE =	https://www.mozilla.org/firefox/organizations/
PKGNAME =	${MOZILLA_PROJECT}-esr-${MOZILLA_VERSION:S/esr//}
SO_VERSION =	4.0
MOZILLA_LIBS =	xul clearkey lgpllibs mozavcodec mozavutil mozgtk

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla lang/python

MODPY_RUNDEP =	No

COMPILER = 	base-clang ports-clang
MODCLANG_ARCHS =	amd64 i386

# firefox >= 44 doesnt build with base libevent
MOZILLA_USE_BUNDLED_LIBEVENT =	Yes
# firefox >= 46 defaults to gtk+3
MOZILLA_USE_GTK3 = Yes

WANTLIB += X11-xcb intl pixman-1 xcb xcb-shm ${COMPILER_LIBCXX}

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}

# avoid conflict with mainline firefox
CONFIGURE_ARGS +=	--with-app-name=firefox-esr

# bug 857628
CONFIGURE_ARGS +=	--enable-pie

post-install:
	# install prefs
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}-esr-${MOZILLA_VER}/browser/defaults/preferences
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}-esr-${MOZILLA_VER}/browser/defaults/preferences/all-openbsd.js
	# install distribution.ini file
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}-esr-${MOZILLA_VER}/distribution
	echo "[Global]\nid=OpenBSD\nversion=${OSREV}\nabout=Packaged by ${MAINTAINER}\n" > \
		${PREFIX}/lib/${MOZILLA_PROJECT}-esr-${MOZILLA_VER}/distribution/distribution.ini
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}-esr.desktop
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-esr-${MOZILLA_VER:S/esr//}/browser/icons/mozicon128.png \
		${PREFIX}/share/pixmaps/firefox-esr.png

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln ${PREFIX}/lib/firefox-esr-${MOZILLA_VER:S/esr//}/browser/chrome/icons/default/default{48,}.png

.include <bsd.port.mk>
