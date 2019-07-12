# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:37 sthen Exp $

COMMENT=	good-looking ssh-agent pass-phrase dialog

DISTNAME =	ssh-askpass-fullscreen-0.4
REVISION=	6
CATEGORIES=	security

MASTER_SITES =	http://www.cgabriel.org/download/ssh-askpass-fullscreen/

# GPLv2
PERMIT_PACKAGE=	Yes

LIB_DEPENDS =	x11/gtk+2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

do-build:
	cd ${WRKBUILD} && \
	    ${CC} ${CFLAGS} -o ssh-askpass-fullscreen \
	    ${WRKSRC}/ssh-askpass-fullscreen.c `pkg-config --cflags gtk+-2.0` \
	    `pkg-config --libs gtk+-2.0`

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ssh-askpass-fullscreen ${PREFIX}/bin

.include <bsd.port.mk>
