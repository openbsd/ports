# $OpenBSD: Makefile,v 1.1.1.1 2007/10/04 17:50:03 jasper Exp $

COMMENT=		viewer for Gerber (RS-274X) files
DISTNAME=		gerbv-1.0.2
CATEGORIES=		cad graphics

HOMEPAGE=		http://gerbv.sourceforge.net/

MAINTAINER=		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 c expat fontconfig freetype glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gerbv/}

MODULES=		devel/gettext

LIB_DEPENDS=		gdk-x11-2.0.>=0.14,gdk_pixbuf-2.0.>=0.14,gtk-x11-2.0.>=0.14::x11/gtk+2
RUN_DEPENDS=		::devel/desktop-file-utils

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/desktop/gerbv.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/desktop/gerbv.png ${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
