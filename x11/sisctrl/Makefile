# $OpenBSD: Makefile,v 1.3 2008/02/01 21:47:16 steven Exp $

COMMENT=		Display Control Panel for X.org SiS driver

DISTNAME=		sisctrl-0.0.20051202
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11

HOMEPAGE=		http://www.winischhofer.eu/linuxsispart1.shtml\#sisctrl

MAINTAINER=		Marc Winiger <winiger@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.winischhofer.net/sis/

WANTLIB=		ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
			Xcomposite Xdamage Xrandr Xrender Xv Xxf86vm \
			atk-1.0 c cairo expat \
			fontconfig freetype glib-2.0 glitz gmodule-2.0 \
			gobject-2.0 iconv intl m pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 png z

LIB_DEPENDS=		gtk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gdk-x11-2.0.>=1000::x11/gtk+2

NO_REGRESS=		Yes

USE_X11=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
