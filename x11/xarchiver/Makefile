# $OpenBSD: Makefile,v 1.4 2009/09/01 07:44:16 landry Exp $

COMMENT =	simple archive manager
CATEGORIES =	x11 archivers
PKGNAME =	${DISTNAME}p2
DISTNAME =	xarchiver-0.5.2

MAINTAINER =	Landry Breuil <gaston@gcu.info>
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xarchiver/}
EXTRACT_SUFX =	.tar.bz2
HOMEPAGE =	http://xarchiver.sourceforge.net

# GPLv2
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

MODULES =	devel/gettext
USE_X11 =	Yes
USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS =	::devel/desktop-file-utils

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png z pthread-stubs xcb

.include <bsd.port.mk>
