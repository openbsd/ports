# $OpenBSD: Makefile,v 1.37 2001/03/09 14:28:52 wilfried Exp $

DISTNAME=		WindowMaker-0.64.0
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://www.windowmaker.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR=	beta/srcs

LIB_DEPENDS=		PropList.2::devel/libproplist \
			jpeg.62::graphics/jpeg \
			tiff.35::graphics/tiff \
			png.1::graphics/png \
			gif.4.1::graphics/giflib

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--disable-debug \
			--with-pixmapdir="${PREFIX}/share/WindowMaker/Pixmaps"

SYSCONFDIR=		${PREFIX}/share/WindowMaker/Defaults

post-patch:
	@perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" \
		${WRKSRC}/WINGs/wapplication.c \
		${WRKSRC}/WPrefs.app/Menu.c \
		${WRKSRC}/WPrefs.app/Paths.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/WindowMaker/Sounds

.include <bsd.port.mk>
