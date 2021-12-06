# $OpenBSD: Makefile,v 1.43 2021/12/06 13:43:45 ajacoutot Exp $

PORTROACH=		limit:^2\.46

COMMENT =		C++ interface for pango

GNOME_PROJECT =		pangomm
GNOME_VERSION =		2.46.2

CATEGORIES =		devel x11

SHARED_LIBS += pangomm-1.4               10.3 # 1.0.30

HOMEPAGE =		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} cairomm-1.0 glib-2.0 glibmm-2.4
WANTLIB += gobject-2.0 pango-1.0 pangocairo-1.0 sigc-2.0

MODULES =		devel/meson \
			x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/glib2mm \
			devel/pango \
			graphics/cairomm

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
