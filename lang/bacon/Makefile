# $OpenBSD: Makefile,v 1.12 2018/04/25 09:08:13 juanfra Exp $

COMMENT =		BASIC converter to C translator for Unix system

DISTNAME =		bacon-3.7.2

CATEGORIES =		lang

HOMEPAGE =		http://www.basic-converter.org/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcursor Xdmcp Xext Xfixes
WANTLIB += Xft Xinerama c fltk fltk_images fontconfig m

MASTER_SITES =		http://www.basic-converter.org/stable/ \
			http://www.basic-converter.org/museum/

BUILD_DEPENDS =		shells/bash
RUN_DEPENDS =		devel/desktop-file-utils \
			shells/bash
LIB_DEPENDS =		x11/fltk

PORTHOME =		${WRKDIR}

CONFIGURE_STYLE =	gnu
# Disable the gtk bacongui. It doesn't works on OpenBSD.
CONFIGURE_ARGS =	--with-bash \
			--disable-gui-gtk
CONFIGURE_ENV =		CPPFLAGS="`fltk-config --cxxflags`" \
			CFLAGS="`fltk-config --cflags` ${CFLAGS}" \
			CXXFLAGS="`fltk-config --cxxflags` ${CXXFLAGS}" \
			LDFLAGS="-L. `fltk-config --ldflags`" \
			CC=${CC} CXX=${CXX}

NO_TEST =		Yes

# The man page is broken.
post-install:
	rm "${PREFIX}/man/man1/bacon.1"

.include <bsd.port.mk>
