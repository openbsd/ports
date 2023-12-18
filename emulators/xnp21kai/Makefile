BROKEN-i386 =	i386c/ia32/paging.h:368:14: error: function with no prototype cannot use the fastcall calling convention

COMMENT =	PC-9801 emulator

DISTNAME =	NP21kai-0.0.20231030
PKGNAME =	x${DISTNAME:L}

GH_ACCOUNT =	AZO234
GH_PROJECT =	NP2kai
GH_COMMIT =	d9501b220ff59279973bdf53e2ae26bbc27ed7fe

CATEGORIES =	emulators

HOMEPAGE =	https://domisan.sakura.ne.jp/article/np2kai/np2kai.html

# MIT
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SDL2_mixer SDL2_ttf SM
WANTLIB += X11 Xext atk-1.0 c cairo crypto fontconfig gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangoxft-1.0 ssl usb-1.0

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	devel/harfbuzz \
		devel/libusb1 \
		devel/pango \
		devel/sdl2 \
		devel/sdl2-mixer \
		devel/sdl2-ttf \
		x11/gtk+2,-main

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

FIX_CRLF_FILES = ${WRKSRC}/network/net.c

CONFIGURE_ARGS = -DCMAKE_DISABLE_FIND_PACKAGE_Git=TRUE

CONFIGURE_ENV+=	NP2KAI_VERSION=rev.22 \
		NP2KAI_HASH="${GH_COMMIT}" \

# Something's wrong with SDL2 detection
MODCMAKE_LDFLAGS += -L${LOCALBASE}/lib -lSDL2_ttf -lSDL2_mixer -lSDL2

# fix manpage install path
post-install:
	rm -rf ${PREFIX}/share/man
	${INSTALL_MAN} ${WRKBUILD}/xnp21kai.1 ${PREFIX}/man/man1/
	${INSTALL_MAN_DIR} ${PREFIX}/man/ja/man1
	${INSTALL_MAN} ${WRKBUILD}/xnp21kai.1j ${PREFIX}/man/ja/man1/

.include <bsd.port.mk>
