# $OpenBSD: Makefile,v 1.23 2013/12/03 14:21:37 giovanni Exp $

COMMENT=		gui cd image editor

DISTNAME=		isomaster-1.3.9

CATEGORIES=		x11
HOMEPAGE=		http://littlesvr.ca/isomaster/

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=		.tar.bz2

MASTER_SITES=		${HOMEPAGE}releases/

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z gdk_pixbuf-2.0 gdk-x11-2.0
WANTLIB += gtk-x11-2.0

USE_GMAKE=		Yes
NO_TEST=		Yes

FAKE_FLAGS=	MYMANPATH=${WRKINST}/${TRUEPREFIX}/man/man1 \
		DESTDIR=""

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile
	@perl -pi -e 's/@\$$\(/\$$\(/g' ${WRKSRC}/Makefile \
		${WRKSRC}/bk/Makefile ${WRKSRC}/iniparser-2.17/Makefile

.include <bsd.port.mk>
