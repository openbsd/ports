# $OpenBSD: Makefile,v 1.55 2002/11/22 11:53:58 wilfried Exp $

COMMENT=		'window manager that emulates NEXTSTEP(tm)'
COMMENT-lang=		"language subpackage for Window Maker"

V=			0.80.2
DISTNAME=		WindowMaker-${V}
PKGNAME=		${DISTNAME:L}
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

NO_REGRESS=		Yes
SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--with-pixmapdir="${PREFIX}/share/WindowMaker/Pixmaps" \
			--with-nlsdir="${LOCALBASE}/share/locale" \
			--disable-dependency-tracking \
			--enable-gnome \
			--enable-kde
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng" LIBS="-L${LOCALBASE}/lib" \
			LINGUAS='bg cs da de el es et fi fr gl hr hu it ja ko ms nl no pl pt ro ru sk sv tr zh_CN zh_TW.Big5'

SYSCONFDIR=		${PREFIX}/share/WindowMaker/Defaults

MULTI_PACKAGES= 	-lang

.for i in ${MULTI_PACKAGES}
PKGNAME$i=      	windowmaker${i}-${V}
.endfor

SUBPACKAGE?=

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=		:windowmaker->=0.80.1:x11/windowmaker
.else
MODULES=		gettext
LIB_DEPENDS=		jpeg.62::graphics/jpeg \
			tiff.35::graphics/tiff \
			png.2::graphics/png \
			ungif.5::graphics/libungif
.endif

post-patch:
	@perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" \
		${WRKSRC}/WINGs/wapplication.c \
		${WRKSRC}/WPrefs.app/Menu.c \
		${WRKSRC}/WPrefs.app/Paths.c
# Rename wrongly named locale files
	@mv ${WRKSRC}/WindowMaker/menu.cz ${WRKSRC}/WindowMaker/menu.cs
	@mv ${WRKSRC}/WindowMaker/menu.se ${WRKSRC}/WindowMaker/menu.sv

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/WindowMaker/Sounds

.include <bsd.port.mk>
