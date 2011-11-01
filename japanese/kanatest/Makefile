# $OpenBSD: Makefile,v 1.21 2011/11/01 16:27:06 jasper Exp $

COMMENT =	beginner's drill tool to learn Japanese kana characters 

DISTNAME =	kanatest-0.4.6
REVISION=	6

CATEGORIES =	japanese

HOMEPAGE =	http://clay.ll.pl/kanatest/

MAINTAINER =	Mathieu Sauve-Frankel <msf@openbsd.org> 

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xml2 z

MASTER_SITES =	${HOMEPAGE}

MODULES =	devel/gettext

RUN_DEPENDS =	devel/desktop-file-utils
LIB_DEPENDS =	x11/gtk+2 \
		textproc/libxml

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS =	Yes

.include <bsd.port.mk>
