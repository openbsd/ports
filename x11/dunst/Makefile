# $OpenBSD: Makefile,v 1.1.1.1 2016/05/03 18:42:51 jca Exp $

COMMENT=	customizable and lightweight notification-daemon

DISTNAME =	dunst-1.1.0

CATEGORIES =	x11

HOMEPAGE=	http://www.knopwob.org/dunst/

MAINTAINER =	Timo Myyrä <timo.myyra@wickedbsd.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB +=	X11 Xext Xft Xinerama Xss c freetype m pthread z \
		cairo dbus-1 gio-2.0 glib-2.0 gobject-2.0 intl \
		pango-1.0 pangocairo-1.0 xdg-basedir

MASTER_SITES=	http://www.knopwob.org/public/dunst-release/
EXTRACT_SUFX =	.tar.bz2

USE_GMAKE =	Yes

LIB_DEPENDS +=	x11/dbus \
		x11/libxdg-basedir \
		devel/pango \
		devel/glib2 \
		graphics/cairo \
		devel/gettext

MAKE_FLAGS =	V=1 PREFIX="${PREFIX}" MANPREFIX="${PREFIX}/man"

post-install:
	mv ${PREFIX}/share/dunst ${PREFIX}/share/examples/dunst

.include <bsd.port.mk>
