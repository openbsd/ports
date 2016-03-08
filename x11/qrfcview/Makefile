# $OpenBSD: Makefile,v 1.20 2016/03/08 14:36:38 zhuk Exp $

COMMENT=	viewer for IETF RFCs

DISTNAME=	qrfcview-0.62
REVISION=	10
MAINTAINER=	Vadim Zhukov <zhuk@openbsd.org>
CATEGORIES=	x11

# GPLv2 (everything except src/TitleModel.cpp is GPLv2+)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB += QtGui QtNetwork c m pthread stdc++

# requires qmake fix
BUILD_DEPENDS=	x11/qt4>=4.8.7p6

GH_ACCOUNT=	saghul
GH_PROJECT=	qrfcview-osx
GH_COMMIT=	dff3ee489a6aca0c20800219f7c207884f918023

MODULES=	x11/qt4
NO_TEST=	Yes

CONFIGURE_STYLE=	qmake

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/qRFCView ${PREFIX}/bin

.include <bsd.port.mk>
