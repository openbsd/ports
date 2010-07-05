# $OpenBSD: Makefile,v 1.4 2010/07/05 08:35:01 landry Exp $

COMMENT =	OpenStreetMap editor

DISTNAME =	merkaartor-0.16.0
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	geo x11

HOMEPAGE =	http://www.merkaartor.be/
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://merkaartor.be/attachments/download/1/

NO_REGRESS =	Yes
MODULES =	devel/gettext x11/qt4
RUN_DEPENDS =	::devel/desktop-file-utils

LIB_DEPENDS =	QtGui,QtNetwork,QtSvg,QtXml::x11/qt4

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 gthread-2.0 m png pthread
WANTLIB += stdc++ z

do-configure:
	cd ${WRKSRC} && env ${CONFIGURE_ENV} qmake4 NOUSEWEBKIT=1 GDAL=0 NODEBUG=1 \
	PREFIX=${WRKINST}${PREFIX} TRANSDIR_MERKAARTOR=${WRKINST}/${PREFIX}/share/merkaartor/translations

pre-build:
	cd ${WRKSRC}/translations && ${MAKE} release

.include <bsd.port.mk>
