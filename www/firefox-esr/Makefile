# $OpenBSD: Makefile,v 1.11 2014/08/10 09:58:06 espie Exp $

COMMENT =	Firefox web browser, Extended Support Release

MOZILLA_VERSION =	31.0esr
MOZILLA_BRANCH =	esr31
MOZILLA_PROJECT =	firefox
MOZILLA_CODENAME =	browser

PKGNAME =	${MOZILLA_PROJECT}-esr-${MOZILLA_VERSION:S/esr//}
SO_VERSION =	1.0
MOZILLA_LIBS =	browsercomps mozalloc mozgnome xul

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla devel/gettext lang/python

MODPY_RUNDEP =	No

# necessary glue to build with the correct compiler after fx 17
MODULES +=		gcc4 lang/clang
MODGCC4_ARCHS =		powerpc sparc64 alpha i386
MODGCC4_LANGS =		c c++
MODCLANG_ARCHS =	amd64
MODCLANG_LANGS =	c c++
# fix for 982693
.if ${MACHINE_ARCH:Mamd64}
MAKE_ENV += VPXHACK="-fno-integrated-as"
.endif

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	autoconf no-autoheader

# to be able to link when building with clang on i386 or gcc on ppc
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--disable-debug-symbols
.endif

# avoid conflict with mainline firefox
CONFIGURE_ARGS +=	--with-app-name=firefox-esr

# relies on pulseaudio for sound and broken at runtime
CONFIGURE_ARGS +=	--disable-webrtc

CONFIGURE_ARGS +=	--enable-gstreamer=1.0

# libxul doesnt link directly with gst but dlopens it at runtime
# see content/media/gstreamer/GStreamerLoader.cpp
#LIB_DEPENDS +=	multimedia/gstreamer-0.10/plugins-base
#WANTLIB += gmodule-2.0 gstapp-0.10 gstbase-0.10 gstreamer-0.10
#WANTLIB += gstvideo-0.10 xml2

BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-base
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-good

# needs 3.0.10 when not using gcc
# CONFIGURE_ARGS += --with-system-ffi

# --with-system-png=${LOCALBASE}
# no system png : apng support not bundled in

MOZILLA_AUTOCONF_DIRS +=	js/src

post-install:
	# install prefs
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}-esr-${MOZILLA_VER}/browser/defaults/preferences
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}-esr-${MOZILLA_VER}/browser/defaults/preferences/all-openbsd.js
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
