# $OpenBSD: Makefile,v 1.18 2020/08/01 11:00:31 sthen Exp $

COMMENT=	wysiwyw (what you see is what you want) editing platform

DISTNAME=	TeXmacs-1.99.13
EXTRACT_SUFX=	-src.tar.gz
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

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

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

CXXFLAGS+=	-Wno-deprecated-register

post-extract:
	rm -f ${WRKDIST}/plugins/mathematica/bin/realpath.py

.include <bsd.port.mk>
