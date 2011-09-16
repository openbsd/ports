# $OpenBSD: Makefile,v 1.2 2011/09/16 12:00:06 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	simple Qt4-based browser using WebKit

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

DISTNAME=	arora-0.11.0
REVISION=	0
CATEGORIES=	www
MASTER_SITES=	http://arora.googlecode.com/files/

HOMEPAGE=	http://code.google.com/p/arora/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	QtGui QtNetwork QtScript QtSql QtWebKit c m pthread stdc++

MODULES=	x11/qt4
RUN_DEPENDS=	devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-bad \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/plugins-good

MAKE_FLAGS=	CC="${CC}" CXX="${CXX}" LINK="${CXX}"
FAKE_FLAGS=	INSTALL_FILE="${INSTALL_DATA}" INSTALL_PROGRAM="${INSTALL_PROGRAM}"

DESTDIRNAME=	INSTALL_ROOT

do-configure:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4 -r

.include <bsd.port.mk>
