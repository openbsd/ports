BROKEN-mips64 =		SIGBUS bacon binary
BROKEN-sparc64 =	SIGBUS bacon binary

COMMENT =		BASIC converter to C translator for Unix system

DISTNAME =		bacon-5.0.2pre20241122

CATEGORIES =		lang

HOMEPAGE =		https://www.basic-converter.org/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcursor Xdmcp Xext Xfixes
WANTLIB += Xft Xinerama c fltk fltk_images fontconfig m

COMPILER =		base-clang ports-gcc base-gcc

SITES =			https://www.basic-converter.org/stable/ \
			https://www.basic-converter.org/museum/ \
			https://download.tuxfamily.org/jod/lang/bacon/

BUILD_DEPENDS =		shells/ksh93
RUN_DEPENDS =		devel/desktop-file-utils \
			shells/bash \
			x11/gtk+4,-guic
LIB_DEPENDS =		x11/fltk

PORTHOME =		${WRKDIR}

CONFIGURE_STYLE =	gnu
# Gtk doesn't works on OpenBSD.
CONFIGURE_ARGS =	--with-ksh93 \
			--enable-gui-fltk
CONFIGURE_ENV =		CFLAGS="`fltk-config --cflags` ${CFLAGS}" \
			CXXFLAGS="`fltk-config --cxxflags` ${CXXFLAGS}" \
			CC=${CC} CXX=${CXX}

# Avoid interactive questions during build
MAKE_ENV =		BACON_IN_DOCKER=true

NO_TEST =		Yes

# The man page is broken. The package includes the same doc as plain .txt.
post-install:
	rm "${PREFIX}/man/man1/bacon.1"

.include <bsd.port.mk>
