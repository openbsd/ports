# $OpenBSD: Makefile,v 1.89 2013/08/22 23:03:20 sthen Exp $

COMMENT-main=		window manager that emulates NEXTSTEP(tm)
COMMENT-lang=		language subpackage for Window Maker

V=			0.92.0
DISTNAME=		WindowMaker-${V}
PKGNAME-main=		${DISTNAME:L}
REVISION-main=		14
FULLPKGNAME-lang=	windowmaker-lang-${V}
REVISION-lang=		3

SHARED_LIBS +=	wraster              5.0      # 4.0

CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://www.windowmaker.info/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xft Xinerama Xpm Xrender c expat fontconfig
WANTLIB += freetype jpeg m png pthread-stubs tiff ungif xcb z

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER:=source/release/}
EXTRACT_SUFX=		.tar.bz2

NO_TEST=		Yes
SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--enable-xinerama \
			--with-datadir="${LOCALBASE}/share/WindowMaker" \
			--with-nlsdir="${LOCALBASE}/share/locale"

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" LIBS="-L${LOCALBASE}/lib" \
			LINGUAS='be bg bs ca cs da de el es et fi fr gl hr hu it ja ko ms nl no pl pt ro ru sk sv tr zh_CN zh_TW'

MULTI_PACKAGES=		-main -lang

MODULES=		devel/gettext
LIB_DEPENDS=		graphics/tiff \
			graphics/png \
			graphics/libungif

RUN_DEPENDS-lang=	x11/windowmaker>=0.90.0
LIB_DEPENDS-lang=
WANTLIB-lang=

post-patch:
# Rename wrongly named locale files
	@mv ${WRKSRC}/WindowMaker/menu.cz ${WRKSRC}/WindowMaker/menu.cs
	@mv ${WRKSRC}/WindowMaker/menu.se ${WRKSRC}/WindowMaker/menu.sv

pre-configure:
	@perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" \
	${WRKSRC}/WINGs/wapplication.c \
	${WRKSRC}/WPrefs.app/Menu.c \
	${WRKSRC}/WPrefs.app/Paths.c \
	${WRKSRC}/WindowMaker/Defaults/WMWindowAttributes.in \
	${WRKSRC}/WindowMaker/Defaults/WindowMaker.in

post-install:
	mv ${WRKINST}/${SYSCONFDIR}/WindowMaker ${PREFIX}/share/examples/
	${INSTALL_DATA_DIR} ${PREFIX}/share/WindowMaker/Sounds
	${INSTALL_DATA_DIR} ${PREFIX}/GNUstep/Applications
	ln -s ${LOCALBASE}/share/WPrefs ${PREFIX}/GNUstep/Applications/WPrefs.app

.include <bsd.port.mk>
