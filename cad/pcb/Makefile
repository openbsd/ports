# $OpenBSD: Makefile,v 1.22 2011/11/01 19:00:25 jasper Exp $

COMMENT=	printed circuit board layout tool
DISTNAME=	pcb-20100929
REVISION=	3
CATEGORIES=	cad

HOMEPAGE=	http://pcb.gpleda.org/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo dbus-1 expat fontconfig
WANTLIB += freetype gd gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pcb/}

RUN_DEPENDS=	devel/m4 \
		devel/desktop-file-utils \
		graphics/ImageMagick \
		misc/shared-mime-info \
		${MODTK_RUN_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS} \
		shells/bash
LIB_DEPENDS=	graphics/gd \
		x11/dbus \
		x11/gtk+2

MODULES=	devel/gettext \
		textproc/intltool \
		x11/tk

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-doc \
		--with-gui=gtk \
		--disable-update-desktop-database \
		--disable-update-mime-database

pre-configure:
	${SUBST_CMD} ${WRKSRC}/doc/pcb.1 \
		${WRKSRC}/icon-theme-installer

post-install:
	rm -rf ${PREFIX}/share/${DISTNAME}
	${INSTALL_MAN} ${WRKSRC}/doc/pcb.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/doc/pcb.info* ${PREFIX}/info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pcb
	${INSTALL_DATA} ${WRKSRC}/doc/pcb.html ${PREFIX}/share/doc/pcb
	${INSTALL_DATA} ${WRKSRC}/doc/*.png ${PREFIX}/share/doc/pcb
	${INSTALL_DATA} ${WRKSRC}/doc/refcard.pdf ${PREFIX}/share/doc/pcb

.include <bsd.port.mk>
