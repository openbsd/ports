# $OpenBSD: Makefile,v 1.20 2019/07/24 18:26:26 juanfra Exp $

COMMENT =		BASIC converter to C translator for Unix system

DISTNAME =		bacon-3.9.1

CATEGORIES =		lang

HOMEPAGE =		http://www.basic-converter.org/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcursor Xdmcp Xext Xfixes
WANTLIB += Xft Xinerama c fltk fltk_images fontconfig m

COMPILER =		base-clang ports-gcc base-gcc

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
			--enable-gui-fltk \
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
