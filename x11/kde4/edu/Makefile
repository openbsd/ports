# $OpenBSD: Makefile,v 1.10 2010/06/19 18:43:38 espie Exp $

COMMENT =		K Desktop Environment, edu
DISTNAME =		kdeedu-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=	compoundviewer       0.0      # .4.0
SHARED_LIBS +=	extdate              5.0      # .4.0
SHARED_LIBS +=	kdeeducore           5.0      # .4.0
SHARED_LIBS +=	kdeeduplot           5.0      # .4.0
SHARED_LIBS +=	kdeeduui             5.0      # .4.0
SHARED_LIBS +=	science              0.0      # .4.0
SHARED_LIBS +=	SatLib               0.0      # .1.0
SHARED_LIBS +=	kiten                3.0      # .4.0
SHARED_LIBS +=	kvoctraincore        2.0      # .1.0
SHARED_LIBS +=	sbigudrv             0.0      # .1.0
SHARED_LIBS +=  keduvocdocument      0.0      # .4.0
SHARED_LIBS +=  marblewidget         0.0      # .4.0
SHARED_LIBS +=  avogadro-kalzium     0.0      # .0.0
SHARED_LIBS +=	analitza             0.0      # .4.4
SHARED_LIBS +=	analitzagui          0.0      # .4.4
SHARED_LIBS +=	cantorlibs           0.0      # .0.0


# ocaml is not a real dependency, as it's only needed in relation to libfacile
BUILD_DEPENDS +=	::math/eigen
LIB_DEPENDS +=	kdecore.>=8,kde3support,kdeui,khtml,kio,kjs,knotifyconfig,kparts,ktexteditor,kutils,knewstuff2,knewstuff3,krosscore,krossui,kunitconversion,kpty,plasma::x11/kde4/libs \
		cfitsio::math/cfitsio \
		openbabel::misc/openbabel \
		phonon::multimedia/phonon \
		gps::misc/gpsd \
		spectre::print/libspectre

WANTLIB += GL GLU
WANTLIB += c
WANTLIB += m pthread stdc++ z
WANTLIB += Qt3Support QtGui QtOpenGL QtSvg QtXml QtDBus QtNetwork
WANTLIB += QtScript QtScriptTools QtWebKit
WANTLIB += ncurses
WANTLIB += readline
WANTLIB += xml2 xslt


# broken libgps
CONFIGURE_ARGS += -Dlibgps_FOUND:BOOL=false
CONFIGURE_ARGS += -Dlibgps_LIBRARIES:FILEPATH=
CONFIGURE_ARGS += -Dlibgps_INCLUDES:PATH=
CONFIGURE_ARGS += -DWITH_SBIG:BOOL=OFF
		
.include <bsd.port.mk>
