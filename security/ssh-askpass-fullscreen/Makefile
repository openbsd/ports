# $OpenBSD: Makefile,v 1.9 2013/03/11 11:41:28 espie Exp $

COMMENT=	good-looking ssh-agent pass-phrase dialog

DISTNAME =	ssh-askpass-fullscreen-0.4
REVISION=	5
CATEGORIES=	security

MASTER_SITES =	http://www.cgabriel.org/download/ssh-askpass-fullscreen/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/gettext

LIB_DEPENDS =	x11/gtk+2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0 gdk_pixbuf-2.0 gthread-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs 
WANTLIB += xcb xcb-render z GL xcb-shm

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ssh-askpass-fullscreen ${PREFIX}/bin

.include <bsd.port.mk>
