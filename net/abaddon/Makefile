COMMENT =	alternative & light Discord client

V =	0.2.4
PKGNAME =	abaddon-${V}

DIST_TUPLE +=	github uowuo abaddon v${V} .
DIST_TUPLE +=	github machinezone IXWebSocket \
		bc765e73a31ea5372e36d1b1add036af3218cb17 subprojects/ixwebsocket
DIST_TUPLE +=	github hrantzsch keychain \
		502312f59fdc44fa1103e67f8f17cec3affb82d9 subprojects/keychain
DIST_TUPLE +=	github discord libdave \
		52cd56dc550f447fb354b3a06c9e2d2e2a4309c6 subprojects/libdave
DIST_TUPLE +=	github mackron miniaudio \
		9634bedb5b5a2ca38c1ee7108a9358a4e233f14d subprojects/miniaudio
DIST_TUPLE +=	github cisco mlspp \
		1cc50a124a3bc4e143a787ec934280dc70c1034d subprojects/mlspp
DIST_TUPLE +=	github nayuki QR-Code-generator \
		22fac31bdf81da68730c177c0e931c93234d2a30 subprojects/qrcodegen

CATEGORIES =	net x11

HOMEPAGE =	https://github.com/uowuo/abaddon

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# GPLv3+, IXWebSocket 3BSD, miniaudio MIT QR-Code-generator MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 atkmm-1.6 c cairo cairomm-1.0
WANTLIB += crypto curl fmt fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0
WANTLIB += gtk-3 gtkmm-3.0 handy-1 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 secret-1 sigc-2.0 spdlog sqlite3
WANTLIB += ssl z

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

# mlspp currently broken with libressl
CONFIGURE_ARGS =	-DENABLE_VOICE=0

BUILD_DEPENDS =	textproc/nlohmann-json
LIB_DEPENDS =	databases/sqlite3 \
		devel/atk2mm \
		devel/fmt \
		devel/glib2mm \
		devel/harfbuzz \
		devel/spdlog \
		net/curl \
		x11/gnome/libsecret \
		x11/gtk3mm \
		x11/libhandy

.include <bsd.port.mk>
