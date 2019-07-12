# $OpenBSD: Makefile,v 1.107 2019/07/12 20:51:23 sthen Exp $

COMMENT-main=		window manager that emulates NEXTSTEP(tm)
COMMENT-lang=		language subpackage for Window Maker

V =			0.95.8
DISTNAME=		WindowMaker-${V}
PKGNAME-main=		${DISTNAME:L}
REVISION-main=		4
FULLPKGNAME-lang=	windowmaker-lang-${V}
REVISION-lang=		0

SHARED_LIBS +=  WINGs                     1.0 # 4.0
SHARED_LIBS +=  WMaker                    0.0 # 1.1
SHARED_LIBS +=  WUtil                     0.0 # 5.0
SHARED_LIBS +=  wraster                   6.0 # 6.0

CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://windowmaker.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xmu Xpm Xrandr Xrender
WANTLIB += Xt c expat fontconfig freetype gif iconv intl jpeg
WANTLIB += kvm m png pthread tiff xcb z

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER:=source/release/}

NO_TEST=		Yes
SEPARATE_BUILD=		Yes
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

MULTI_PACKAGES=		-main -lang

BUILD_DEPENDS=		devel/gettext,-tools
LIB_DEPENDS=		devel/gettext,-runtime \
			graphics/tiff \
			graphics/png \
			graphics/giflib

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
