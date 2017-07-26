# $OpenBSD: Makefile,v 1.17 2017/07/26 22:45:31 sthen Exp $

COMMENT=	simple Qt4-based browser using WebKit

ONLY_FOR_ARCHS=	${GCC4_ARCHS} ${CLANG_ARCHS}

DISTNAME=	arora-0.11.0
REVISION=	8
CATEGORIES=	www
MASTER_SITES=	https://arora.googlecode.com/files/

HOMEPAGE=	https://github.com/arora/arora

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += QtGui QtNetwork QtScript QtSql QtWebKit c m pthread ${COMPILER_LIBCXX}
WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MODULES=	devel/qmake x11/qt4

RUN_DEPENDS=	devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/plugins-good \
		x11/gtk+3,-guic

MAKE_FLAGS=	CC="${CC}" CXX="${CXX}" LINK="${CXX}"
FAKE_FLAGS=	INSTALL_FILE="${INSTALL_DATA}" INSTALL_PROGRAM="${INSTALL_PROGRAM}"

DESTDIRNAME=	INSTALL_ROOT

.include <bsd.port.mk>
