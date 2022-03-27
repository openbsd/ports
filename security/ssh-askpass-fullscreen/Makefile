COMMENT=	good-looking ssh-agent pass-phrase dialog

DISTNAME =	ssh-askpass-fullscreen-0.4
REVISION=	7
CATEGORIES=	security

MASTER_SITES =	http://www.cgabriel.org/download/ssh-askpass-fullscreen/

# GPLv2
PERMIT_PACKAGE=	Yes

LIB_DEPENDS =	x11/gtk+2

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

do-build:
	cd ${WRKBUILD} && \
	    ${CC} ${CFLAGS} -o ssh-askpass-fullscreen \
	    ${WRKSRC}/ssh-askpass-fullscreen.c `pkg-config --cflags gtk+-2.0` \
	    `pkg-config --libs gtk+-2.0`

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ssh-askpass-fullscreen ${PREFIX}/bin

.include <bsd.port.mk>
