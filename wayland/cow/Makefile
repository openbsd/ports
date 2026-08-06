COMMENT =		stacking window manager for wayland

DIST_TUPLE =		codeberg thomasadam cow db9b7a6c0ff37f5e1d7b5602f57fdb31d0941255 .
PKGNAME =		cow-0.0.0pl20260801

CATEGORIES =		wayland

HOMEPAGE =		https://codeberg.org/thomasadam/cow

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo event_core gobject-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pthread util wayland-client wayland-cursor xkbcommon

COMPILER =		base-clang ports-gcc

MODULES =		devel/meson

BUILD_DEPENDS =		\
			devel/bison \
			textproc/scdoc \
			wayland/libinput-openbsd \
			wayland/wayland-protocols

LIB_DEPENDS =		\
			devel/glib2 \
			devel/libevent2 \
			devel/pango \
			graphics/cairo \
			wayland/wayland \
			x11/xkbcommon

RUN_DEPENDS =		\
			wayland/fnott \
			wayland/foot \
			wayland/fuzzel \
			wayland/river \
			wayland/waybar \
			wayland/xwayland

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I/usr/include"

WRKDIST =		${WRKDIR}/cow

post-install:
	rm -rf ${PREFIX}/etc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cow
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cow/{river,themes,waybar}
	${INSTALL_DATA} ${WRKSRC}/config/cow/{cow.conf,after-start.sh} \
		 ${PREFIX}/share/examples/cow/
	${INSTALL_DATA} ${WRKSRC}/config/waybar/{config,style.css} \
		 ${PREFIX}/share/examples/cow/waybar/
	${INSTALL_DATA} ${WRKSRC}/config/river/init \
		 ${PREFIX}/share/examples/cow/river/
	cp -R ${WRKSRC}/examples/themes/* \
		${PREFIX}/share/examples/cow/themes/


.include <bsd.port.mk>

