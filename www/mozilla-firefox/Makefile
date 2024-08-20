COMMENT =	Firefox web browser
ONLY_FOR_ARCHS =	amd64 aarch64 riscv64

# Don't forget to bump www/firefox-i18n after updates.

MOZILLA_VERSION =	129.0.2
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	firefox
MOZILLA_CODENAME =	browser

WRKDIST =	${WRKDIR}/${MOZILLA_DIST}-${MOZILLA_DIST_VERSION:C/b[0-9]*//}
HOMEPAGE =	https://www.mozilla.org/firefox/
SO_VERSION =	141.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	mozavcodec mozavutil mozgtk mozwayland xul clearkey gkcodecs lgpllibs mozsqlite3 ipcclientcerts

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla lang/python

MODPY_RUNDEP =	No

COMPILER =	ports-clang

# 63 requires node because why not #1483595
BUILD_DEPENDS +=	lang/node
# 63 requires cbindgen #1478813
BUILD_DEPENDS +=	devel/cbindgen>=0.23.0
# wasi
BUILD_DEPENDS +=	lang/wasi-sdk/compiler-rt \
			lang/wasi-sdk/libcxxabi \
			lang/wasi-sdk/libcxx \
			lang/wasi-libc
# mach uses pkg_resources
BUILD_DEPENDS +=	devel/py-setuptools${MODPY_FLAVOR}

# uses pledge()
WANTLIB += Xrandr Xtst

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODPY_BIN} ${WRKSRC}/configure.py
CONFIGURE_ARGS +=	--prefix=${PREFIX}
MAKE_ENV +=		BUILD_VERBOSE_LOG="1" CARGOFLAGS="-j${MAKE_JOBS}"
CONFIGURE_ENV +=	CPPFLAGS=-Wno-backend-plugin
CONFIGURE_ENV +=	LDFLAGS="-Wl,--threads=${MAKE_JOBS} --ld-path=${WRKDIR}/bin/ld"

CONFIGURE_ARGS +=	--enable-release #1386371
CONFIGURE_ARGS +=	--enable-sandbox
CONFIGURE_ARGS +=	--enable-forkserver
CONFIGURE_ARGS +=	--with-wasi-sysroot=${LOCALBASE}/share/wasi-sysroot
CONFIGURE_ARGS +=	--with-libclang-path=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib
# LTO eats too much RAM on riscv64
.if ${MACHINE_ARCH} != riscv64
CONFIGURE_ARGS +=	--enable-lto=thin
.endif

# XXX badly formed debug ?
DWZ = :
DEBUG_PACKAGES =	${BUILD_PACKAGES}
DEBUG_CONFIGURE_ARGS +=	--enable-debug-symbols \
			--disable-install-strip

# not built on riscv64
COMMENT_FFVPX ?=
.if ${MACHINE_ARCH} == riscv64
COMMENT_FFVPX =		@comment # needs a trailing space
.endif
SUBST_VARS +=		COMMENT_FFVPX

post-install:
	${SUBST_MAN} ${FILESDIR}/mozilla-firefox.1 \
		${PREFIX}/man/man1/firefox.1
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
	${INSTALL_DATA} ${WRKSRC}/taskcluster/docker/firefox-flatpak/org.mozilla.firefox.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop

	# make sure TwemojiMozilla.ttf is found
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/
	mv ${PREFIX}/lib/${MOZILLA_PROJECT}/fonts ${PREFIX}/share/fonts/${MOZILLA_PROJECT}

	# install icons for desktop file
.for s in 16 22 24 32 48 64 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/browser/branding/official/default${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/org.mozilla.${MOZILLA_PROJECT}.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/browser/branding/official/content/about-logo.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/org.mozilla.${MOZILLA_PROJECT}.svg

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln -f ${PREFIX}/lib/${MOZILLA_PROJECT}/browser/chrome/icons/default/default{48,}.png

.for f in unveil pledge
.for t in content gpu main rdd socket utility
	${INSTALL_DATA} ${FILESDIR}/${f}.${t} ${PREFIX}/lib/${MOZILLA_PROJECT}/browser/defaults/preferences/
.endfor
.endfor

.include <bsd.port.mk>
