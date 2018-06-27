# $OpenBSD: Makefile,v 1.14 2018/06/27 21:03:45 espie Exp $

COMMENT =	free multi-dimensional Tetris-like game
DISTNAME =	galois-0.5
CATEGORIES =	games x11
REVISION =	0

HOMEPAGE =	http://www.nongnu.org/galois/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} atk-1.0 atkmm-1.6 c cairo cairo-gobject
WANTLIB += cairomm-1.0 gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0
WANTLIB += giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0 gtk-3 gtkmm-3.0
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangomm-1.4 sigc-2.0
WANTLIB += xml++-2.6 xml2

MASTER_SITES =	${MASTER_SITE_SAVANNAH:=galois/source/}

# C++14
COMPILER =	base-clang ports-clang ports-gcc

LIB_DEPENDS =	textproc/libxml++>=2.40.0 \
		x11/gtk3mm

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu

MAKE_FILE =	makefile
ALL_TARGET =	default
MAKE_FLAGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS} -std=c++14"

NO_TEST =	Yes

.include <bsd.port.mk>
