# $OpenBSD: Makefile,v 1.425 2020/06/02 15:27:27 landry Exp $

COMMENT =	Mozilla web browser
ONLY_FOR_ARCHS =	amd64 i386 aarch64

# Don't forget to bump www/firefox-i18n after updates.

MOZILLA_VERSION =	77.0
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	firefox
MOZILLA_CODENAME =	browser

WRKDIST =	${WRKDIR}/${MOZILLA_DIST}-${MOZILLA_DIST_VERSION:C/b[0-9]*//}
HOMEPAGE =	https://www.mozilla.org/firefox/
SO_VERSION =	92.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	mozavcodec mozavutil mozgtk xul clearkey lgpllibs mozsqlite3

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
# #1611386
MOZILLA_USE_BUNDLED_SQLITE = Yes

# firefox >= 53 needs rust
BUILD_DEPENDS +=	lang/rust>=1.39
# stylo build needs LLVM
BUILD_DEPENDS +=	devel/llvm
# 61 requires both versions of python
BUILD_DEPENDS +=	lang/python/${MODPY_DEFAULT_VERSION_3}
# 63 requires node because why not #1483595
BUILD_DEPENDS +=	lang/node
# 63 requires cbindgen #1478813
BUILD_DEPENDS +=	devel/cbindgen>=0.13.1
.if (${MACHINE_ARCH}==amd64) || (${MACHINE_ARCH}==i386)
# 67 requires nasm for bundled libdav1d
BUILD_DEPENDS +=	devel/nasm
.endif
# unveil support relies on xdg-open
RUN_DEPENDS +=		devel/xdg-utils

# uses pledge()
WANTLIB += X11-xcb Xcursor Xi intl xcb xcb-shm harfbuzz ${COMPILER_LIBCXX}

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--prefix=${PREFIX}
MAKE_ENV +=		BUILD_VERBOSE_LOG="1" CARGOFLAGS="-j${MAKE_JOBS}"

CONFIGURE_ARGS +=	--enable-release #1386371
CONFIGURE_ARGS +=	--enable-sandbox
CONFIGURE_ARGS +=	--with-libclang-path=${LOCALBASE}/lib
SUBST_VARS +=	LOCALBASE X11BASE MOZILLA_PROJECT

# XXX badly formed debug ?
DWZ = :
DEBUG_PACKAGES =	${BUILD_PACKAGES}
DEBUG_CONFIGURE_ARGS +=	--enable-debug-symbols \
			--disable-install-strip

show-commit:
	@curl -s https://releases.mozilla.org/pub/mozilla.org/firefox/releases/${MOZILLA_VERSION}/SOURCE| awk -F / '/^https:\/\/hg/ {print $$7 }'

post-install:
	${SUBST_MAN} ${FILESDIR}/mozilla-firefox.1 \
		${PREFIX}/man/man1/mozilla-firefox.1
	cd ${PREFIX}/man/man1/ && ln -sf mozilla-firefox.1 firefox.1
	cd ${PREFIX}/bin/ && ln -sf firefox mozilla-firefox
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
	${SUBST_DATA} ${WRKSRC}/taskcluster/docker/firefox-snap/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln ${PREFIX}/lib/${MOZILLA_PROJECT}/browser/chrome/icons/default/default{48,}.png

.for f in unveil.content unveil.gpu unveil.main pledge.content pledge.gpu pledge.main
	${INSTALL_DATA} ${FILESDIR}/${f} ${PREFIX}/lib/${MOZILLA_PROJECT}/browser/defaults/preferences/
.endfor

.include <bsd.port.mk>
