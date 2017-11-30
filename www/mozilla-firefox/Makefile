# $OpenBSD: Makefile,v 1.334 2017/11/30 19:33:41 landry Exp $

COMMENT =	Mozilla web browser
ONLY_FOR_ARCHS =	amd64 i386

# Don't forget to bump www/firefox-i18n after updates.

MOZILLA_VERSION =	57.0.1
MOZILLA_PROJECT =	firefox
MOZILLA_CODENAME =	browser

HOMEPAGE =	https://www.mozilla.org/firefox/
SO_VERSION =	75.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	mozavcodec mozavutil mozgtk xul clearkey lgpllibs

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla lang/python

MODPY_RUNDEP =	No

COMPILER =	base-clang ports-clang
MODCLANG_ARCHS =	amd64 i386

# firefox >= 44 doesnt build with base libevent
MOZILLA_USE_BUNDLED_LIBEVENT =	Yes
# firefox >= 46 defaults to gtk+3
MOZILLA_USE_GTK3 = Yes
# 56 requires 59.1
MOZILLA_USE_BUNDLED_ICU =	Yes

# firefox >= 53 needs rust
BUILD_DEPENDS +=	lang/rust
# stylo build needs LLVM
BUILD_DEPENDS +=	devel/llvm

WANTLIB += X11-xcb intl pixman-1 xcb xcb-shm ${COMPILER_LIBCXX}

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}
MAKE_ENV +=		BUILD_VERBOSE_LOG="1"

# needed to find sqlite header
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

# bug 857628
CONFIGURE_ARGS +=	--enable-pie
CONFIGURE_ARGS +=	--enable-release #1386371
CONFIGURE_ARGS +=	--enable-rust-simd #1261841
CONFIGURE_ARGS +=	--enable-webrender=build
# bug 1409680
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS +=	--disable-debug-symbols
.endif
#CONFIGURE_ARGS +=	--enable-linker=lld

SUBST_VARS +=	LOCALBASE X11BASE
pre-configure:
	${SUBST_CMD} ${WRKSRC}/layout/style/bindgen.toml.in

post-install:
	${SUBST_MAN} ${FILESDIR}/mozilla-firefox.1 \
		${PREFIX}/man/man1/mozilla-firefox.1
	cd ${PREFIX}/man/man1/ && ln -sf mozilla-firefox.1 firefox.1
	cd ${PREFIX}/bin/ && ln -sf firefox mozilla-firefox
	# install prefs
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/browser/defaults/preferences
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/browser/defaults/preferences/all-openbsd.js
	# install distribution.ini file
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/distribution
	echo "[Global]\nid=OpenBSD\nversion=${OSREV}\nabout=Packaged by ${MAINTAINER}\n" > \
		${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/distribution/distribution.ini
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/browser/icons/mozicon128.png \
		${PREFIX}/share/pixmaps/firefox.png

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln ${PREFIX}/lib/firefox-${MOZILLA_VER}/browser/chrome/icons/default/default{48,}.png

.include <bsd.port.mk>
