# $OpenBSD: Makefile,v 1.62 2005/11/13 08:49:19 sturm Exp $

COMMENT=		'window manager that emulates NEXTSTEP(tm)'
COMMENT-lang=		"language subpackage for Window Maker"

V=			0.92.0
DISTNAME=		WindowMaker-${V}
PKGNAME=		${DISTNAME:L}p0
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://www.windowmaker.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER:=source/release/}
EXTRACT_SUFX=		.tar.bz2

FLAVORS=		xinerama
FLAVOR?=


NO_REGRESS=		Yes
SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--with-datadir="${LOCALBASE}/share/WindowMaker" \
			--with-nlsdir="${LOCALBASE}/share/locale"
.if ${FLAVOR:L:Mxinerama}
CONFIGURE_ARGS+=	--enable-xinerama
.endif

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" LIBS="-L${LOCALBASE}/lib" \
			LINGUAS='be bg bs ca cs da de el es et fi fr gl hr hu it ja ko ms nl no pl pt ro ru sk sv tr zh_CN zh_TW'

SUBPACKAGE?=
MULTI_PACKAGES=         -lang
FULLPKGNAME-lang=       windowmaker-lang-${V}

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=		:windowmaker->=0.90.0:x11/windowmaker
.else
MODULES=		devel/gettext
LIB_DEPENDS=		jpeg.62::graphics/jpeg \
			tiff.35::graphics/tiff \
			png.2::graphics/png \
			ungif.5::graphics/libungif
WANTLIB=		X11 Xext Xft Xpm Xrender c fontconfig freetype m z
. if ${FLAVOR:L:Mxinerama}
WANTLIB+=		Xinerama
. endif
.endif

post-patch:
# Rename wrongly named locale files
	@mv ${WRKSRC}/WindowMaker/menu.cz ${WRKSRC}/WindowMaker/menu.cs
	@mv ${WRKSRC}/WindowMaker/menu.se ${WRKSRC}/WindowMaker/menu.sv

pre-configure:
	@perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" \
	${WRKSRC}/WINGs/wapplication.c \
	${WRKSRC}/WPrefs.app/Menu.c \
	${WRKSRC}/WPrefs.app/Paths.c \
	${WRKSRC}/WindowMaker/Defaults/WindowMaker.in

post-install:
	mv ${WRKINST}/${SYSCONFDIR}/WindowMaker ${PREFIX}/share/examples/
	${INSTALL_DATA_DIR} ${PREFIX}/share/WindowMaker/Sounds
	${INSTALL_DATA_DIR} ${PREFIX}/GNUstep/Applications
	ln -s ${LOCALBASE}/share/WPrefs ${PREFIX}/GNUstep/Applications/WPrefs.app

.include <bsd.port.mk>
