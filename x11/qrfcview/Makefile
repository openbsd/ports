# $OpenBSD: Makefile,v 1.25 2017/07/26 22:45:33 sthen Exp $

COMMENT=	viewer for IETF RFCs

DISTNAME=	qrfcview-1.0.0
MAINTAINER=	Vadim Zhukov <zhuk@openbsd.org>
CATEGORIES=	x11

# GPLv2 (everything except src/TitleModel.cpp is GPLv2+)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB += QtGui QtNetwork c m pthread ${COMPILER_LIBCXX}

# requires qmake fix
BUILD_DEPENDS=	x11/qt4>=4.8.7p6

GH_ACCOUNT=	saghul
GH_PROJECT=	qrfcview-osx
GH_TAGNAME=	1.0.0
REVISION=	0

MODULES=	devel/qmake x11/qt4

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/qRFCView ${PREFIX}/bin

.include <bsd.port.mk>
