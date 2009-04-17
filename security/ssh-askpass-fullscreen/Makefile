# $OpenBSD: Makefile,v 1.1.1.1 2009/04/17 14:57:59 landry Exp $

COMMENT=	good-looking ssh-agent pass-phrase dialog

DISTNAME =	ssh-askpass-fullscreen-0.4
CATEGORIES=	security

MASTER_SITES =	http://www.cgabriel.org/download/ssh-askpass-fullscreen/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS =	gdk-x11-2.0,gtk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png z

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ssh-askpass-fullscreen ${PREFIX}/bin

.include <bsd.port.mk>
