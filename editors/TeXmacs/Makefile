COMMENT=	wysiwyw (what you see is what you want) editing platform

DISTNAME=	TeXmacs-2.1.2-src
PKGNAME=	${DISTNAME:S/-src//}
REVISION=	5

CATEGORIES=	editors print x11

HOMEPAGE=	https://texmacs.org/

MAINTAINER=	Nam Nguyen <namn@openbsd.org>

SITES=		http://texmacs.org/Download/ftp/tmftp/source/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5PrintSupport Qt5Svg
WANTLIB += Qt5Widgets c execinfo freetype gmp guile jpeg ltdl
WANTLIB += m png sqlite3 util z

MODULES=	devel/cmake \
		lang/python \
		x11/qt5

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
		x11/qt5/qtsvg,-main

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

# requires Xorg access
NO_TEST =		Yes

# needed for execinfo
CONFIGURE_ARGS=	-DUSE_STACK_TRACE=ON

post-extract:
	rm -f ${WRKDIST}/plugins/mathematica/bin/realpath.py

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/TeXmacs/plugins/tmpy

.include <bsd.port.mk>
