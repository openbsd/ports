# $OpenBSD: Makefile,v 1.1.1.1 2009/12/27 17:46:07 landry Exp $

COMMENT =	OpenStreetMap editor

DISTNAME =	merkaartor-0.14
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	geo x11

HOMEPAGE =	http://www.merkaartor.org/
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://www.merkaartor.org/downloads/source/

NO_REGRESS =	Yes
MODULES =	devel/gettext x11/qt4
RUN_DEPENDS =	::devel/desktop-file-utils

LIB_DEPENDS =	QtGui,QtNetwork,QtSvg,QtXml::x11/qt4

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 gthread-2.0 m png pthread
WANTLIB += stdc++ z

do-configure:
	cd ${WRKSRC} && env ${CONFIGURE_ENV} qmake4 NOUSEWEBKIT=1 NODEBUG=1 PREFIX=${WRKINST}${PREFIX}

pre-build:
	cd ${WRKSRC}/translations && ${MAKE} release

.include <bsd.port.mk>
