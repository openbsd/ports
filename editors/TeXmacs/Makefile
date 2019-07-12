# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:04 sthen Exp $

COMMENT=	wysiwyw (what you see is what you want) editing platform

DISTNAME=	TeXmacs-1.99.9-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	editors print x11

HOMEPAGE=	http://texmacs.org/

MAINTAINER =	Nam Nguyen <namn@berkeley.edu>

MASTER_SITES=	http://texmacs.org/Download/ftp/tmftp/source/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets
WANTLIB += c execinfo freetype gmp guile jpeg ltdl m png sqlite3
WANTLIB += util z

MODULES=	devel/cmake \
		x11/qt5

BUILD_DEPENDS=	print/ghostscript/gnu

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		print/ghostscript/gnu \
		x11/gtk+3,-guic
LIB_DEPENDS=	databases/sqlite3 \
		devel/gmp \
		devel/libexecinfo \
		graphics/jpeg \
		graphics/png \
		lang/guile

CONFIGURE_ARGS=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

CXXFLAGS+=	-Wno-deprecated-register

post-extract:
	rm -f ${WRKDIST}/plugins/mathematica/bin/realpath.py

.include <bsd.port.mk>
