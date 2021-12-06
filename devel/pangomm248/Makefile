# $OpenBSD: Makefile,v 1.4 2021/12/06 13:46:33 ajacoutot Exp $

COMMENT =		C++ API for Pango

GNOME_PROJECT =		pangomm
GNOME_VERSION =		2.48.2
PKGNAME =		pangomm248-${GNOME_VERSION}

CATEGORIES =		devel x11

SHARED_LIBS += pangomm-2.48              0.0 # 1.0.30

HOMEPAGE =		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} cairomm-1.16 giomm-2.68 glib-2.0
WANTLIB += glibmm-2.68 gobject-2.0 pango-1.0 pangocairo-1.0 sigc-3.0

MODULES =		devel/meson \
			x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/glibmm268 \
			devel/pango \
			graphics/cairomm16

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
