# $OpenBSD: Makefile,v 1.31 2019/07/12 20:51:14 sthen Exp $

COMMENT=		gui cd image editor

DISTNAME=		isomaster-1.3.14

CATEGORIES=		x11
HOMEPAGE=		http://littlesvr.ca/isomaster/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	${HOMEPAGE}releases/

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes
MAKE_FLAGS=	CC=${CC}
NO_TEST=	Yes

FAKE_FLAGS=	MYMANPATH=${WRKINST}/${TRUEPREFIX}/man/man1 \
		DESTDIR=""

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile
	@perl -pi -e 's/@\$$\(/\$$\(/g' ${WRKSRC}/Makefile \
		${WRKSRC}/bk/Makefile ${WRKSRC}/iniparser-2.17/Makefile

.include <bsd.port.mk>
