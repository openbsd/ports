# $OpenBSD: Makefile,v 1.36 2001/02/15 17:57:54 wilfried Exp $

DISTNAME=	WindowMaker-0.64.0
PKGNAME=	${DISTNAME:L}
CATEGORIES=	x11 x11/windowmaker
NEED_VERSION=	1.340
HOMEPAGE=	http://www.windowmaker.org/
MASTER_SITES=	${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR= beta/srcs

LIB_DEPENDS=	PropList.2::devel/libproplist \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.1::graphics/png \
		gif.4.1::graphics/giflib

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

SYSCONFDIR=	${PREFIX}/share/WindowMaker/Defaults
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--enable-static \
		--disable-debug \
		--with-pixmapdir="${PREFIX}/share/WindowMaker/Pixmaps"

post-patch:
	@perl -pi -e "s|%%PREFIX%%|${PREFIX}|g" \
		${WRKSRC}/WINGs/wapplication.c \
		${WRKSRC}/WPrefs.app/Menu.c \
		${WRKSRC}/WPrefs.app/Paths.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/WindowMaker/Sounds

.include <bsd.port.mk>
