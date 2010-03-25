# $OpenBSD: Makefile,v 1.1.1.1 2010/03/25 09:23:18 laurent Exp $

COMMENT =		vi-like minimalists web browser

DISTNAME =		xxxterm-1.79

CATEGORIES =		www

HOMEPAGE =		http://www.peereboom.us/xxxterm/html/

MAINTAINER =		Laurent Fanis <laurent@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnutls gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs soup-2.4 util xcb xml2 z

LIB_DEPENDS =		webkit-1.0::www/webkit
			
MASTER_SITES =		http://www.peereboom.us/xxxterm/snapshot/

EXTRACT_SUFX =		.tgz
USE_X11 =		Yes


NO_REGRESS=		Yes

EXAMPLEDIR =		${PREFIX}/share/examples/xxxterm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xxxterm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xxxterm.1 ${PREFIX}/man/man8/xxxterm.1
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/xxxterm.conf ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/favorites ${EXAMPLEDIR}

.include <bsd.port.mk>
