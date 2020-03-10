# $OpenBSD: Makefile,v 1.22 2020/03/10 19:58:20 juanfra Exp $

COMMENT =		BASIC converter to C translator for Unix system

DISTNAME =		bacon-4.0

CATEGORIES =		lang

HOMEPAGE =		https://www.basic-converter.org/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcursor Xdmcp Xext Xfixes
WANTLIB += Xft Xinerama c fltk fltk_images fontconfig m

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://www.basic-converter.org/stable/ \
			https://www.basic-converter.org/museum/

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
			CXXFLAGS="`fltk-config --cxxflags` -Wno-deprecated ${CXXFLAGS}" \
			LDFLAGS="-L. `fltk-config --ldflags`" \
			CC=${CC} CXX=${CXX}

NO_TEST =		Yes

# The man page is broken.
post-install:
	rm "${PREFIX}/man/man1/bacon.1"

.include <bsd.port.mk>
