COMMENT =		minimalistic text based status bar

MODCABAL_STEM =		xmobar
MODCABAL_VERSION =	0.50
CATEGORIES =		x11
HOMEPAGE =		https://xmobar.org

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB =		X11 Xext Xft Xinerama Xrandr Xrender \
			Xss c ffi gmp iconv \
			lib/inotify/inotify m pthread util z \
			cairo glib-2.0 gobject-2.0 harfbuzz intl \
			pango-1.0 pangocairo-1.0 png

MODULES =		devel/cabal
MODCABAL_FLAGS =	with_xft with_mpd with_mpris with_inotify
MODCABAL_BUILD_ARGS =	--allow-newer

# % cabal get xmobar-0.50
# % cd ./xmobar-0.50
# % cabal v2-configure --flags="with_xft with_mpd with_mpris with_inotify"
# % cabal v2-build
# % cabal-bundler --openbsd xmobar -p ./dist-newstyle/cache/plan.json

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi \
			devel/pango \
			devel/libinotify \
			graphics/cairo

EXAMPLEDIR =		${PREFIX}/share/examples/xmobar

NO_TEST =		Yes

SUBST_VARS +=		LOCALBASE

post-patch:
	@cp ${FILESDIR}/Batt.hs ${WRKBUILD}/src/Xmobar/Plugins/Monitors
	@cp ${FILESDIR}/{apm.c,apm.h,Binding.hsc} \
		${WRKBUILD}/src/Xmobar/Plugins/Monitors/Batt

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/etc/xmobar.config ${EXAMPLEDIR}/xmobarrc

.include "cabal.inc"

.include <bsd.port.mk>
