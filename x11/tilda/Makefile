# $OpenBSD: Makefile,v 1.11 2010/07/30 08:02:59 ajacoutot Exp $

COMMENT=		drop-down terminal emulator

DISTNAME=		tilda-0.9.6
REVISION=		3
CATEGORIES=		x11

HOMEPAGE=		http://tilda.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tilda/}

MODULES=		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat glade-2.0
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread xml2 z pthread-stubs xcb confuse vte

RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=		::devel/libconfuse \
			::devel/libglade2 \
			::devel/vte

USE_GMAKE=		Yes
USE_X11=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tilda
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tilda

.include <bsd.port.mk>
