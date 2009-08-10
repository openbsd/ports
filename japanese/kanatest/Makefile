# $OpenBSD: Makefile,v 1.14 2009/08/10 06:32:05 kili Exp $

COMMENT =	beginner's drill tool to learn Japanese kana characters 

DISTNAME =	kanatest-0.4.6
PKGNAME =	${DISTNAME}p1
CATEGORIES =	japanese

HOMEPAGE =	http://clay.ll.pl/kanatest/

MAINTAINER =	Mathieu Sauve-Frankel <msf@openbsd.org> 

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png \
		pthread-stubs xcb z

MASTER_SITES =	${HOMEPAGE}

MODULES =	devel/gettext

RUN_DEPENDS =	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS =	gdk-x11-2.0.>=600.0,gdk_pixbuf-2.0.>=600.0,gtk-x11-2.0.>=600.0::x11/gtk+2 \
		xml2.::textproc/libxml

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

USE_X11 =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
