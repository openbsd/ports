# $OpenBSD: Makefile,v 1.5 2008/01/22 19:59:28 espie Exp $

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


BUILD_DEPENDS +=	::math/eigen
LIB_DEPENDS +=	kdecore.>=8,kde3support,kdeui,khtml,kio,kjs,knotifyconfig,kparts,ktexteditor,kutils,kfile,knewstuff2,kpty,phonon,solid::x11/kde4/libs \
		cfitsio::math/cfitsio

# for kalzium
#		openbabel::misc/openbabel

WANTLIB += GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama
WANTLIB += Xpm Xrandr Xrender Xtst c fontconfig freetype jpeg
WANTLIB += m png pthread stdc++ util z
WANTLIB += Qt3Support QtGui QtOpenGL QtSvg QtXml QtDBus QtNetwork
WANTLIB += bz2 gif pcre pcreposix
WANTLIB += Xfixes dbus-1 fam glib-2.0 gthread-2.0 iconv intl ncurses
WANTLIB += readline streamanalyzer streams


CONFIGURE_ARGS += -DBUILD_kalzium:BOOL=false
# broken libgps
CONFIGURE_ARGS += -Dlibgps_FOUND:BOOL=false
CONFIGURE_ARGS += -Dlibgps_LIBRARIES:FILEPATH=
CONFIGURE_ARGS += -Dlibgps_INCLUDES:PATH=
CONFIGURE_ARGS += -DWITH_SBIG:BOOL=OFF
		
.include <bsd.port.mk>
