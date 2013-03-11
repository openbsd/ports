# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:41 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	simple Qt4-based browser using WebKit

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

DISTNAME=	arora-0.11.0
REVISION=	4
CATEGORIES=	www
MASTER_SITES=	http://arora.googlecode.com/files/

HOMEPAGE=	http://code.google.com/p/arora/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += QtGui QtNetwork QtScript QtSql QtWebKit c m pthread stdc++
WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

MODULES=	x11/qt4
RUN_DEPENDS=	devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/plugins-good \
		x11/gtk+2,-guic

MAKE_FLAGS=	CC="${CC}" CXX="${CXX}" LINK="${CXX}"
FAKE_FLAGS=	INSTALL_FILE="${INSTALL_DATA}" INSTALL_PROGRAM="${INSTALL_PROGRAM}"

DESTDIRNAME=	INSTALL_ROOT

do-configure:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4 -r

.include <bsd.port.mk>
