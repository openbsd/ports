# $OpenBSD: Makefile,v 1.33 2018/06/27 21:03:41 espie Exp $

COMMENT=	lightweight Gtk text editor with syntax highlighting

DISTNAME=	beaver0_3_0_1
PKGNAME=	beaver-0.3.0.1
CATEGORIES=	editors

REVISION=	11

HOMEPAGE=	http://beaver-editor.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=beaver-editor/}
EXTRACT_SUFX=	.tgz

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB+= Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB+= gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB+= intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

LIB_DEPENDS=	x11/gtk+2

RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}" OPTI="${CFLAGS}"

WRKSRC=		${WRKDIST}/src

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/interface.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/beaver \
		${PREFIX}/bin/beaver
	${INSTALL_DATA} ${WRKDIST}/beaver.1x \
		${PREFIX}/man/man1/beaver.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/beaver/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/beaver/bl
	@cd ${WRKDIST}; ${INSTALL_DATA} ${WRKDIST}/bl/* \
		${PREFIX}/share/beaver/bl
	${INSTALL_DATA} ${WRKDIST}/pixmaps/* ${PREFIX}/share/beaver/pixmaps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKDIST}/beaver.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
