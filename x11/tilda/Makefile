# $OpenBSD: Makefile,v 1.1.1.1 2007/05/09 19:10:27 jasper Exp $

COMMENT=		"drop-down terminal emulator"

DISTNAME=		tilda-0.9.4
CATEGORIES=		x11

HOMEPAGE=		http://tilda.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xi Xinerama \
		Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv \
		intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pangox-1.0 pangoxft-1.0 png pthread z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=tilda/}

LIB_DEPENDS=		confuse::devel/libconfuse \
			vte.>=11::devel/vte

USE_X11=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tilda
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tilda

.include <bsd.port.mk>
