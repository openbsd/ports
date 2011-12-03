# $OpenBSD: Makefile,v 1.13 2011/12/03 20:30:09 ajacoutot Exp $

COMMENT =	OpenStreetMap editor

DISTNAME =	merkaartor-0.17.0
REVISION=	2
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	geo x11

HOMEPAGE =	http://www.merkaartor.be/
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://merkaartor.be/attachments/download/192/

NO_REGRESS =	Yes
MODULES =	devel/gettext x11/qt4
BUILD_DEPENDS = devel/boost
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	x11/qt4 devel/proj

WANTLIB += QtGui QtNetwork QtSvg QtWebKit QtXml c m proj pthread
WANTLIB += stdc++ z

do-configure:
	cd ${WRKSRC} && env ${CONFIGURE_ENV} qmake4 GDAL=0 PROJ=1 NODEBUG=1 \
	PREFIX=${WRKINST}${PREFIX} TRANSDIR_MERKAARTOR=${WRKINST}/${PREFIX}/share/merkaartor/translations

pre-build:
	cd ${WRKSRC}/translations && ${MAKE} release

.include <bsd.port.mk>
