# $OpenBSD: Makefile,v 1.11 2011/01/07 22:40:52 laurent Exp $

COMMENT =		vi-like minimalists web browser

DISTNAME =		xxxterm-1.221

CATEGORIES =		www

HOMEPAGE =		http://opensource.conformal.com/wiki/XXXTerm

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
WANTLIB += gmodule-2.0 gnutls gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs soup-2.4 util xcb xcb-render
WANTLIB += GL Xxf86vm drm xcb-shm xml2 z
WANTLIB += webkit-1.0

LIB_DEPENDS =		www/webkit

RUN_DEPENDS =		devel/desktop-file-utils

MASTER_SITES =		http://opensource.conformal.com/snapshots/xxxterm/

EXTRACT_SUFX =		.tgz



NO_REGRESS=		Yes

EXAMPLEDIR =		${PREFIX}/share/examples/xxxterm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xxxterm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xxxterm.1 ${PREFIX}/man/man8/xxxterm.1
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/xxxterm.conf ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/favorites ${EXAMPLEDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/xxxterm/
	${INSTALL_DATA} ${WRKSRC}/xxxtermicon*.png ${PREFIX}/share/xxxterm/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	@${SUBST_CMD} -c ${WRKSRC}/xxxterm.desktop ${PREFIX}/share/applications/xxxterm.desktop
	${INSTALL_DATA} ${WRKSRC}/xxxterm.desktop ${PREFIX}/share/applications/
	${CHOWN} ${SHAREOWN}:${SHAREGRP} $(PREFIX)/share/applications/xxxterm.desktop

.include <bsd.port.mk>
