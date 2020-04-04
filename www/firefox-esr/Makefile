# $OpenBSD: Makefile,v 1.122 2020/04/04 07:19:16 landry Exp $

COMMENT =	Firefox web browser, Extended Support Release
ONLY_FOR_ARCHS =	amd64 i386 aarch64

MOZILLA_VERSION =	68.6.1esr
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	firefox
MOZILLA_CODENAME =	browser

# XXX badly formed debug in libxul ?
DWZ = :
DEBUG_PACKAGES =	${BUILD_PACKAGES}

WRKDIST =	${WRKDIR}/${MOZILLA_DIST}-${MOZILLA_DIST_VERSION:C/esr//}
HOMEPAGE =	https://www.mozilla.org/firefox/organizations/
PKGNAME =	${MOZILLA_PROJECT}-esr-${MOZILLA_VERSION:S/esr//}
SO_VERSION =	6.0
MOZILLA_LIBS =	xul clearkey lgpllibs mozavcodec mozavutil mozgtk

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla lang/python

MODPY_RUNDEP =	No

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

# firefox >= 53 needs rust
BUILD_DEPENDS +=	lang/rust
# stylo build needs LLVM
BUILD_DEPENDS +=	devel/llvm
# 61 requires both versions of python
BUILD_DEPENDS +=	lang/python/${MODPY_DEFAULT_VERSION_3}
# 63 requires node because why not #1483595
BUILD_DEPENDS +=	lang/node
# 63 requires cbindgen #1478813
BUILD_DEPENDS +=	devel/cbindgen>=0.9.0
.if (${MACHINE_ARCH}==amd64) || (${MACHINE_ARCH}==i386)
# 67 requires nasm for bundled libdav1d
BUILD_DEPENDS +=	devel/nasm
.endif

# uses pledge()
WANTLIB += X11-xcb Xcursor Xi intl xcb xcb-shm ${COMPILER_LIBCXX}

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}
MAKE_ENV +=		BUILD_VERBOSE_LOG="1" CARGOFLAGS="-j${MAKE_JOBS}"

# avoid conflict with mainline firefox
CONFIGURE_ARGS +=	--with-app-name=firefox-esr

CONFIGURE_ARGS +=	--enable-release #1386371
CONFIGURE_ARGS +=	--enable-sandbox --enable-content-sandbox
CONFIGURE_ARGS +=	--with-libclang-path=${LOCALBASE}/lib
CONFIGURE_ARGS +=	--with-clang-path=${LOCALBASE}/bin/clang

DEBUG_CONFIGURE_ARGS +=	--enable-debug-symbols \
			--disable-install-strip
post-patch:
	sed -i 's/"files":{[^}]*}/"files":{}/' \
		${WRKSRC}/third_party/rust/bindgen/.cargo-checksum.json

post-install:
	# install prefs
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}-esr/browser/defaults/preferences
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}-esr/browser/defaults/preferences/all-openbsd.js
	# install distribution.ini file
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}-esr/distribution
	echo "[Global]\nid=OpenBSD\nversion=${OSREV}\nabout=Packaged by ${MAINTAINER}\n" > \
		${PREFIX}/lib/${MOZILLA_PROJECT}-esr/distribution/distribution.ini
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}-esr.desktop
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-esr/browser/chrome/icons/default/default128.png \
		${PREFIX}/share/pixmaps/firefox-esr.png

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln ${PREFIX}/lib/${MOZILLA_PROJECT}-esr/browser/chrome/icons/default/default{48,}.png

.include <bsd.port.mk>
