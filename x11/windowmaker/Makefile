# $OpenBSD: Makefile,v 1.45 2001/09/24 09:34:35 wilfried Exp $

COMMENT=		'window manager that emulates NEXTSTEP(tm)'

DISTNAME=		WindowMaker-0.65.1
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.460

HOMEPAGE=		http://www.windowmaker.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR=	beta/srcs
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		PropList.2::devel/libproplist \
			jpeg.62::graphics/jpeg \
			tiff.35::graphics/tiff \
			png.2::graphics/png \
			gif.4.1::graphics/giflib

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--with-pixmapdir="${PREFIX}/share/WindowMaker/Pixmaps" \
			--with-nlsdir="${LOCALBASE}/share/locale" \
			--enable-gnome

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
