# $OpenBSD: Makefile,v 1.25 2014/10/03 14:35:42 dcoppa Exp $

COMMENT=		wm-dockapp; display CPU and memory load

DISTNAME=		bubblemon-dockapp-1.46
REVISION=		5

CATEGORIES=		sysutils x11 x11/windowmaker

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/software/

MODULES=		devel/gettext

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

LIB_DEPENDS=		x11/gtk+2

USE_GMAKE=		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} $(WRKBUILD)/bubblemon ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bubblemon/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bubblemon/

.include <bsd.port.mk>
