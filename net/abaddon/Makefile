COMMENT =	alternative & light Discord client with voice support

V =	0.2.3
PKGNAME =	abaddon-${V}

DIST_TUPLE +=	github uowuo abaddon v${V} .
DIST_TUPLE +=	github machinezone IXWebSocket \
		bc765e73a31ea5372e36d1b1add036af3218cb17 subprojects/ixwebsocket
DIST_TUPLE +=	github hrantzsch keychain \
		502312f59fdc44fa1103e67f8f17cec3affb82d9 subprojects/keychain
DIST_TUPLE +=	github mackron miniaudio \
		350784a9467a79d0fa65802132668e5afbcf3777 subprojects/miniaudio
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
WANTLIB += gtk-3 gtkmm-3.0 handy-1 harfbuzz intl m opus pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 rnnoise secret-1
WANTLIB += sigc-2.0 sodium spdlog sqlite3 ssl z

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	textproc/nlohmann-json
LIB_DEPENDS =	audio/rnnoise \
		audio/opus \
		databases/sqlite3 \
		devel/atk2mm \
		devel/fmt \
		devel/glib2mm \
		devel/harfbuzz \
		devel/spdlog \
		net/curl \
		security/libsodium \
		x11/gnome/libsecret \
		x11/gtk3mm \
		x11/libhandy

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/abaddon
	cp -R ${WRKSRC}/res/* ${PREFIX}/share/abaddon/
	${INSTALL_PROGRAM} ${WRKBUILD}/abaddon \
		${PREFIX}/bin/

.include <bsd.port.mk>
