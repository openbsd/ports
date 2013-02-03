# $OpenBSD: Makefile,v 1.9 2013/02/03 13:21:42 zhuk Exp $

COMMENT =		K Desktop Environment, base workspace
DISTNAME =		kdebase-workspace-${VERSION}
REVISION =		0

MODULES =		devel/gettext

LIB_DEPENDS +=	x11/kde4/libs \
		x11/gnome/libxklavier \
		devel/libusb \
		multimedia/phonon \
		x11/kde4/qimageblitz \
		x11/kde4/akonadi \
		x11/kde4/pimlibs \
		misc/gpsd \
		audio/xmms \

BUILD_DEPENDS +=	devel/automoc

SUBST_VARS +=	VERSION
USE_GROFF =	Yes

SHARED_LIBS += kdecorations          3.0                # .4.0
SHARED_LIBS += kfontinst             2.0                # .4.0
SHARED_LIBS += kfontinstui           0.0                # .4.0
SHARED_LIBS += kscreensaver          8.0                # .5.0
SHARED_LIBS += ksgrd                 5.0                # .4.0
SHARED_LIBS += kwineffects           0.0                # .1.0
SHARED_LIBS += kwinnvidiahack        0.0                # .4.0
SHARED_LIBS += kworkspace            0.0                # .4.0
SHARED_LIBS += processcore           0.0                # .4.0
SHARED_LIBS += processui             0.0                # .4.0
SHARED_LIBS += solidcontrol          0.0		# .4.0
SHARED_LIBS += solidcontrolifaces    0.0                # .4.0
SHARED_LIBS += taskmanager           3.0                # .4.0
SHARED_LIBS += weather_ion           0.0                # .4.0

SHARED_LIBS += kephal 0.0
SHARED_LIBS += khotkeysprivate 0.0
SHARED_LIBS += ksignalplotter 0.0
SHARED_LIBS += lsofui 0.0
SHARED_LIBS += plasma-geolocation-interface 0.0
SHARED_LIBS += plasmaclock 0.0
SHARED_LIBS += plasmagenericshell 0.0
SHARED_LIBS += plasma_applet-system-monitor 0.0
SHARED_LIBS += systemsettingsview	0.0


WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xft \
	Xinerama Xpm Xrandr Xrender Xss Xtst Xxf86misc akonadi-kde \
	akonadi-kmime c fontconfig freetype glib-2.0 gmodule-2.0 gobject-2.0 \
	gps gthread-2.0 kabc kde3support kdecore>=8 kdefakes kdesu \
	kdeui kfile kholidays khtml kio kjs kmime knewstuff2 knewstuff3 \
	knotifyconfig kparts kpimutils kpty kresources ktexteditor \
	kunitconversion kutils lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui \
	lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg \
	lib/qt4/QtWebKit lib/qt4/QtXml m microblog nepomuk \
	nepomukquery strigiqtdbusclient phonon>=5 plasma png pthread \
	qimageblitz solid soprano stdc++ streamanalyzer syndication \
	threadweaver usb util xklavier xml2 xmms z

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common
.include <bsd.port.mk>
