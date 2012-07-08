# $OpenBSD: Makefile,v 1.2 2012/07/08 21:27:42 gonzalo Exp $

COMMENT=		vi-like minimalists web browser
DISTNAME=		xombrero-1.1.0
CATEGORIES=		www
EPOCH=			1

HOMEPAGE=		http://opensource.conformal.com/wiki/xombrero

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# MPL 1.1/GPL 2.0/LGPL 2.1 for tld-rules file
# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES += devel/gettext

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gnutls gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs soup-2.4 util webkitgtk-1.0
WANTLIB += xcb xcb-render xcb-shm z javascriptcoregtk-1.0

MASTER_SITES=		http://opensource.conformal.com/snapshots/xombrero/

LIB_DEPENDS=		www/webkit>=1.8.0v0
RUN_DEPENDS=		devel/desktop-file-utils

EXTRACT_SUFX=		.tgz

NO_REGRESS=		Yes

EXAMPLEDIR=		${PREFIX}/share/examples/xombrero

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xombrero ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xombrero.1 ${PREFIX}/man/man1/xombrero.1
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/xombrero.conf ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/favorites ${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/playflash.sh ${EXAMPLEDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/xombrero/
	${INSTALL_DATA} ${WRKSRC}/xombreroicon*.png ${PREFIX}/share/xombrero/
	${INSTALL_DATA} ${WRKSRC}/style.css ${PREFIX}/share/xombrero/
	${INSTALL_DATA} ${WRKSRC}/tld-rules ${PREFIX}/share/xombrero/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${WRKSRC}/xombrero.desktop \
		${PREFIX}/share/applications/xombrero.desktop

.include <bsd.port.mk>
