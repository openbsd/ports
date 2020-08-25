# $OpenBSD: Makefile,v 1.131 2020/08/25 13:19:49 landry Exp $

COMMENT =	Firefox web browser, Extended Support Release
ONLY_FOR_ARCHS =	amd64 i386 aarch64

MOZILLA_VERSION =	78.2.0esr
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	firefox-esr
MOZILLA_CODENAME =	browser
MOZILLA_DIST =		firefox

WRKDIST =	${WRKDIR}/${MOZILLA_DIST}-${MOZILLA_DIST_VERSION:C/esr//}
HOMEPAGE =	https://www.mozilla.org/firefox/organizations/
PKGNAME =	${MOZILLA_PROJECT}-${MOZILLA_VERSION:S/esr//}
SO_VERSION =	7.0
MOZILLA_LIBS =	xul clearkey lgpllibs mozavcodec mozavutil mozgtk mozsqlite3

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla lang/python

MODPY_RUNDEP =	No
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

COMPILER =	base-clang ports-clang
MODCLANG_ARCHS =	amd64 i386

# firefox >= 44 doesnt build with base libevent
MOZILLA_USE_BUNDLED_LIBEVENT =	Yes
# firefox >= 46 defaults to gtk+3
MOZILLA_USE_GTK3 = Yes
# 59 is broken with system cairo and the option is being dropped
MOZILLA_USE_BUNDLED_CAIRO = Yes
# #1460600
MOZILLA_USE_BUNDLED_HUNSPELL = Yes
# #1611386
MOZILLA_USE_BUNDLED_SQLITE = Yes

# firefox >= 53 needs rust
BUILD_DEPENDS +=	lang/rust
# stylo build needs LLVM
BUILD_DEPENDS +=	devel/llvm
# 63 requires node because why not #1483595
BUILD_DEPENDS +=	lang/node
# 63 requires cbindgen #1478813
BUILD_DEPENDS +=	devel/cbindgen>=0.14.3
.if (${MACHINE_ARCH}==amd64) || (${MACHINE_ARCH}==i386)
# 67 requires nasm for bundled libdav1d
BUILD_DEPENDS +=	devel/nasm
.endif

# uses pledge()
WANTLIB += X11-xcb Xcursor Xi intl xcb xcb-shm harfbuzz ${COMPILER_LIBCXX}

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}
MAKE_ENV +=		BUILD_VERBOSE_LOG="1" CARGOFLAGS="-j${MAKE_JOBS}"

# avoid conflict with mainline firefox
CONFIGURE_ARGS +=	--with-app-name=${MOZILLA_PROJECT}

CONFIGURE_ARGS +=	--enable-release #1386371
CONFIGURE_ARGS +=	--enable-sandbox
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

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln ${PREFIX}/lib/${MOZILLA_PROJECT}/browser/chrome/icons/default/default{48,}.png

.for f in unveil.content unveil.gpu unveil.main pledge.content pledge.gpu pledge.main
	${INSTALL_DATA} ${FILESDIR}/${f} ${PREFIX}/lib/${MOZILLA_PROJECT}/browser/defaults/preferences/
.endfor

.include <bsd.port.mk>
