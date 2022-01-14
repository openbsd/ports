# $OpenBSD: Makefile,v 1.24 2022/01/14 04:30:11 namn Exp $

COMMENT=	wysiwyw (what you see is what you want) editing platform

DISTNAME=	TeXmacs-2.1.1-src
PKGNAME=	${DISTNAME:S/-src//}

CATEGORIES=	editors print x11

HOMEPAGE=	https://texmacs.org/

MAINTAINER=	Nam Nguyen <namn@berkeley.edu>

MASTER_SITES=	http://texmacs.org/Download/ftp/tmftp/source/

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
		x11/gtk+3,-guic
LIB_DEPENDS=	databases/sqlite3 \
		devel/gmp \
		graphics/jpeg \
		graphics/png \
		lang/guile \
		x11/qt5/qtsvg,-main

# requires Xorg access
NO_TEST =		Yes

# needed for execinfo
CONFIGURE_ARGS=	-DUSE_STACK_TRACE=ON

post-extract:
	rm -f ${WRKDIST}/plugins/mathematica/bin/realpath.py

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/TeXmacs/plugins/tmpy

.include <bsd.port.mk>
