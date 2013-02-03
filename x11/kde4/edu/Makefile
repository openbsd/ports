# $OpenBSD: Makefile,v 1.16 2013/02/03 13:21:42 zhuk Exp $

COMMENT =		K Desktop Environment, edu
DISTNAME =		kdeedu-${VERSION}

SHARED_LIBS +=	kdeeduui             5.0      # .4.0
SHARED_LIBS +=	science              0.0      # .4.0
SHARED_LIBS +=	SatLib               0.0      # .1.0
SHARED_LIBS +=	kiten                3.0      # .4.0
SHARED_LIBS +=  keduvocdocument      0.0      # .4.0
SHARED_LIBS +=  marblewidget         0.0      # .4.0
SHARED_LIBS +=	analitza             0.0      # .4.4
SHARED_LIBS +=	analitzagui          0.0      # .4.4
SHARED_LIBS +=	cantorlibs           0.0      # .0.0
SHARED_LIBS +=  avogadro-kalzium          0.0 # 0.9
SHARED_LIBS +=  compoundviewer            0.0 # 4.4


# ocaml is not a real dependency, as it's only needed in relation to libfacile

BUILD_DEPENDS +=	math/eigen2 \
			devel/automoc 

LIB_DEPENDS +=	x11/kde4/libs \
		math/cfitsio \
		misc/openbabel \
		multimedia/phonon \
		misc/gpsd \
		print/libspectre

# for kstars
BUILD_DEPENDS +=	x11/xplanet
RUN_DEPENDS +=		x11/xplanet

WANTLIB += GL GLU ICE SM X11 Xau Xdmcp Xext Xft Xpm c cfitsio gps kde3support \
	kdecore>=8 kdeui khtml kio kjs knewstuff2 knewstuff3 knotifyconfig \
	kparts kpty krosscore krossui ktexteditor kunitconversion kutils \
	lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDesigner lib/qt4/QtGui \
	lib/qt4/QtNetwork lib/qt4/QtOpenGL lib/qt4/QtScript \
	lib/qt4/QtScriptTools lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml m \
	ncurses openbabel phonon>=5 plasma pthread readline spectre stdc++ \
	xml2 xslt z


# broken libgps
CONFIGURE_ARGS += -Dlibgps_FOUND:BOOL=false
CONFIGURE_ARGS += -Dlibgps_LIBRARIES:FILEPATH=
CONFIGURE_ARGS += -Dlibgps_INCLUDES:PATH=
CONFIGURE_ARGS += -DWITH_SBIG:BOOL=OFF
USE_GROFF =	Yes
		
# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
