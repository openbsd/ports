# $OpenBSD: Makefile,v 1.8 2011/12/22 17:49:06 sebastia Exp $

VMEM_WARNING =	yes
COMMENT =	garmin gps map management tool

DISTNAME =	qlandkartegt-1.3.0
CATEGORIES =	geo x11

HOMEPAGE =	http://www.qlandkarte.org/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qlandkartegt/}
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	devel/cmake x11/qt4
WANTLIB +=	GL GLU ICE SM X11 Xext c m pthread stdc++ z gdal gps>=19
WANTLIB +=	exif QtDBus QtGui QtNetwork QtOpenGL QtSql QtXml QtCore proj
WANTLIB +=	QtWebKit QtXmlPatterns phonon jpeg
LIB_DEPENDS +=	devel/proj \
		x11/qt4 \
		graphics/libexif \
		geo/gdal \
		misc/gpsd>=2.95
RUN_DEPENDS =	devel/desktop-file-utils \
		geo/garmindev

.include <bsd.port.mk>
