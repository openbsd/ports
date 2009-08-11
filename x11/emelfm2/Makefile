# $OpenBSD: Makefile,v 1.6 2009/08/11 08:42:07 ajacoutot Exp $

COMMENT =		GTK+2 file manager

DISTNAME =		emelfm2-0.6.0
PKGNAME=		${DISTNAME}p0

CATEGORIES =		x11
HOMEPAGE =		http://emelfm2.net/

MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}rel/
EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

WANTLIB =	c cairo glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		intl m pango-1.0 pangocairo-1.0 pthread pthread-stubs

RUN_DEPENDS =	::devel/desktop-file-utils \
		::devel/xdg-utils

MAKE_ENV =	CC=${CC} USE_LATEST=1
USE_X11 =	Yes
USE_GMAKE =	Yes
NO_REGRESS =	Yes

.include <bsd.port.mk>
