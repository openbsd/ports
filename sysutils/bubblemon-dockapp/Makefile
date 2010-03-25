# $OpenBSD: Makefile,v 1.14 2010/03/25 06:23:34 jasper Exp $

COMMENT=		wm-dockapp; display CPU and memory load

DISTNAME=		bubblemon-dockapp-1.46
CATEGORIES=     	sysutils x11 x11/windowmaker

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/software/

MODULES=		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z

LIB_DEPENDS=		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} $(WRKBUILD)/bubblemon ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bubblemon/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bubblemon/

.include <bsd.port.mk>
