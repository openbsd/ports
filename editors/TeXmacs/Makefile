COMMENT=	wysiwyw (what you see is what you want) editing platform

V=		2.1.5
SVNREV=		15315
DISTNAME=	TeXmacs-${V}-src
PKGNAME=	${DISTNAME:S/-src//}
WRKDIST=	${WRKDIR}/${DISTNAME:S/-src/.${SVNREV}/}

CATEGORIES=	editors print x11

HOMEPAGE=	https://texmacs.org/

MAINTAINER=	Nam Nguyen <namn@openbsd.org>

SITES=		https://texmacs.org/Download/ftp/tmftp/source/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB+=	${COMPILER_LIBCXX} GL Qt6Core Qt6Core5Compat Qt6Gui
WANTLIB+=	Qt6Network Qt6PrintSupport Qt6Svg Qt6Widgets c execinfo
WANTLIB+=	freetype gmp gnutls guile jpeg ltdl m png sqlite3 util
WANTLIB+=	z

# needs c++ and python
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c c++

MODULES=	devel/cmake \
		lang/python \
		x11/qt6

BUILD_DEPENDS=	print/ghostscript/gnu

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		print/ghostscript/gnu \
		x11/gtk+4,-guic
LIB_DEPENDS=	databases/sqlite3 \
		devel/gmp \
		graphics/jpeg \
		graphics/png \
		lang/guile \
		security/gnutls \
		x11/qt6/qt5compat \
		x11/qt6/qtsvg

MODCMAKE_LDFLAGS=	-L${LOCALBASE}/lib

# requires Xorg access
NO_TEST=		Yes

# needed for execinfo
CONFIGURE_ARGS=	-DUSE_STACK_TRACE=ON \
		-DTEXMACS_GUI=Qt6

post-extract:
	rm -f ${WRKDIST}/plugins/mathematica/bin/realpath.py

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/TeXmacs/plugins/tmpy
	sed -i '1s,/bash,/sh,' ${PREFIX}/share/TeXmacs/plugins/lisp/bin/tm_lisp

.include <bsd.port.mk>
