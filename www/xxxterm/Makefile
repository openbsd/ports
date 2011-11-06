# $OpenBSD: Makefile,v 1.25 2011/11/06 20:25:50 kili Exp $

COMMENT =		vi-like minimalists web browser
DISTNAME =		xxxterm-1.8.1
EPOCH =			0
CATEGORIES =		www

HOMEPAGE =		http://opensource.conformal.com/wiki/XXXTerm

MAINTAINER =		Gonzalo L. R. <gonzalo@x61.com.ar>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES += devel/gettext

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnutls gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs soup-2.4 util webkitgtk-1.0
WANTLIB += xcb xcb-render xcb-shm z javascriptcoregtk-1.0

MASTER_SITES =		http://opensource.conformal.com/snapshots/xxxterm/

LIB_DEPENDS =		www/webkit>=1.6.1v0
RUN_DEPENDS =		devel/desktop-file-utils

EXTRACT_SUFX =		.tgz

NO_REGRESS =		Yes

EXAMPLEDIR =		${PREFIX}/share/examples/xxxterm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xxxterm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xxxterm.1 ${PREFIX}/man/man1/xxxterm.1
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/xxxterm.conf ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/favorites ${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/playflash.sh ${EXAMPLEDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/xxxterm/
	${INSTALL_DATA} ${WRKSRC}/xxxtermicon*.png ${PREFIX}/share/xxxterm/
	${INSTALL_DATA} ${WRKSRC}/style.css ${PREFIX}/share/xxxterm/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${WRKSRC}/xxxterm.desktop \
		${PREFIX}/share/applications/xxxterm.desktop

.include <bsd.port.mk>
