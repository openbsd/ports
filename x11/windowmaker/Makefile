# $OpenBSD: Makefile,v 1.53 2002/05/13 08:18:20 wilfried Exp $

COMMENT=		'window manager that emulates NEXTSTEP(tm)'

DISTNAME=		WindowMaker-0.80.0
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.528

HOMEPAGE=		http://www.windowmaker.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER:=source/release/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		jpeg.62::graphics/jpeg \
			tiff.35::graphics/tiff \
			png.2::graphics/png \
			ungif.5::graphics/libungif

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
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng"

FLAVORS=		i18n
FLAVOR?=

.if ${FLAVOR:L:Mi18n}
MODULES=		gettext
CONFIGURE_ENV+=		LIBS="-L${LOCALBASE}/lib"
CONFIGURE_ENV+=		LINGUAS='bg cs da de el es et fi fr gl hr hu it ja ko nl no pl pt ro ru sk sv tr zh_CN zh_TW.Big5'
.endif

SYSCONFDIR=		${PREFIX}/share/WindowMaker/Defaults

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
