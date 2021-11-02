# $OpenBSD: Makefile,v 1.23 2021/11/02 00:01:12 sthen Exp $

COMMENT=	wysiwyw (what you see is what you want) editing platform

DISTNAME=	TeXmacs-1.99.18-src
PKGNAME=	${DISTNAME:S/-src//}
REVISION=	1

CATEGORIES=	editors print x11

HOMEPAGE=	https://texmacs.org/

MAINTAINER=	Nam Nguyen <namn@berkeley.edu>

MASTER_SITES=	http://texmacs.org/Download/ftp/tmftp/source/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets
WANTLIB += c execinfo freetype gmp guile jpeg ltdl m png sqlite3
WANTLIB += util z

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
		lang/guile

CXXFLAGS+=	-Wno-deprecated-register

post-extract:
	rm -f ${WRKDIST}/plugins/mathematica/bin/realpath.py

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/TeXmacs/plugins/tmpy

.include <bsd.port.mk>
