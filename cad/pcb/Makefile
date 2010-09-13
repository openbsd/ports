# $OpenBSD: Makefile,v 1.13 2010/09/13 07:10:24 jasper Exp $

COMMENT=	printed circuit board layout tool
DISTNAME=	pcb-20091103
REVISION=	0
CATEGORIES=	cad

HOMEPAGE=	http://pcb.gpleda.org/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread-stubs xcb z gd.>=20 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gtk-x11-2.0 gthread-2.0 pthread xcb-render xcb-render-util

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pcb/}

RUN_DEPENDS=	::devel/m4 \
		::devel/desktop-file-utils \
		::graphics/ImageMagick \
		::misc/shared-mime-info \
		${MODTK_RUN_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::shells/bash
LIB_DEPENDS=	::graphics/gd \
		::x11/gtk+2

MODULES=	devel/gettext \
		textproc/intltool \
		x11/tk

USE_GMAKE=	Yes
USE_X11=	Yes
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
