COMMENT-main=		window manager that emulates NEXTSTEP(tm)
COMMENT-lang=		language subpackage for Window Maker

V =			0.96.0
REVISION-main=		0
DISTNAME=		WindowMaker-${V}
PKGNAME-main=		${DISTNAME:L}
FULLPKGNAME-lang=	windowmaker-lang-${V}

SHARED_LIBS +=  WINGs                     1.0 # 4.0
SHARED_LIBS +=  WMaker                    0.0 # 1.1
SHARED_LIBS +=  WUtil                     0.0 # 5.0
SHARED_LIBS +=  wraster                   6.0 # 6.0

CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		https://windowmaker.org/

MAINTAINER=		Michael <michi+openbsd@dataswamp.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 XRes Xext Xft Xinerama
WANTLIB += Xmu Xpm Xrandr Xrender Xt c expat ffi fontconfig freetype
WANTLIB += fribidi gif gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 harfbuzz iconv intl jpeg kvm lzma m pango-1.0
WANTLIB += pangoft2-1.0 pangoxft-1.0 pcre2-8 png tiff xcb z zstd

SITES=	https://github.com/window-maker/wmaker/releases/download/wmaker-${V}/

NO_TEST=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-magick \
			--disable-webp \
			--enable-randr \
			--enable-static \
			--enable-xinerama \
			--localedir="${LOCALBASE}/share/locale"

CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LIBS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			LINGUAS='*' \
			ac_cv_lib_exif_exif_data_new_from_file=no \
			wm_cv_func_secure_getenv=no

CFLAGS+=		-std=gnu99

MULTI_PACKAGES=		-main -lang

BUILD_DEPENDS=		devel/gettext,-tools
LIB_DEPENDS=		devel/gettext,-runtime \
			devel/pango \
			graphics/giflib \
			graphics/graphite2 \
			graphics/png \
			graphics/tiff
RUN_DEPENDS =		devel/desktop-file-utils

RUN_DEPENDS-lang =	x11/windowmaker>=${V}
LIB_DEPENDS-lang=
WANTLIB-lang=

WMAKER_SHARE =		${PREFIX}/share/WindowMaker

pre-configure:
	@touch ${WRKSRC}/configure.ac ${WRKSRC}/aclocal.m4 \
		${WRKSRC}/configure ${WRKSRC}/Makefile.am \
		${WRKSRC}/Makefile.in
	${SUBST_CMD} ${WRKSRC}/WindowMaker/Makefile.in \
		${WRKSRC}/WindowMaker/plmenu.in \
		${WRKSRC}/WindowMaker/Defaults/Makefile.in \
		${WRKSRC}/WindowMaker/Defaults/WMWindowAttributes.in

post-install:
	mv ${WRKINST}/${SYSCONFDIR}/WindowMaker ${PREFIX}/share/examples/
	${INSTALL_DATA_DIR} ${PREFIX}/share/WindowMaker/Sounds
	${INSTALL_DATA_DIR} ${PREFIX}/GNUstep/Applications
	ln -s ${LOCALBASE}/share/WPrefs ${PREFIX}/GNUstep/Applications/WPrefs.app
# Rename wrongly named locale files
	@mv ${WMAKER_SHARE}/menu.cz ${WMAKER_SHARE}/menu.cs
	@mv ${WMAKER_SHARE}/menu.se ${WMAKER_SHARE}/menu.sv

.include <bsd.port.mk>
