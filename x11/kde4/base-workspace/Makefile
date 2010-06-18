# $OpenBSD: Makefile,v 1.2 2010/06/18 18:15:51 espie Exp $

COMMENT =		K Desktop Environment, base workspace
DISTNAME =		kdebase-workspace-${VERSION}
PKGNAME =		${DISTNAME}

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdefakes,kdesu,kdeui,kfile,kio,knewstuff2,knotifyconfig,kparts,kpty,kutils,solid,threadweaver,khtml,kjs,knewstuff3,ktexteditor,kunitconversion,plasma::x11/kde4/libs \
		xklavier::x11/gnome/libxklavier \
		usb::devel/libusb \
		phonon.>=5::multimedia/phonon \
		qimageblitz::x11/kde4/qimageblitz \
		::x11/kde4/akonadi \
		akonadi-kde,akonadi-kmime,kabc,kholidays,kmime,kpimutils,kresources,microblog,syndication::x11/kde4/pimlibs \
		gps::misc/gpsd \
		xmms::audio/xmms



SHARED_LIBS += kdecorations          3.0                # .4.0
SHARED_LIBS += kfontinst             2.0                # .4.0
SHARED_LIBS += kfontinstui           0.0                # .4.0
SHARED_LIBS += kscreensaver          8.0                # .5.0
SHARED_LIBS += ksgrd                 5.0                # .4.0
SHARED_LIBS += kwineffects           0.0                # .1.0
SHARED_LIBS += kwinnvidiahack        0.0                # .4.0
SHARED_LIBS += kworkspace            0.0                # .4.0
SHARED_LIBS += plasma                0.0                # .1.0
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
SHARED_LIBS += plasma-applet-system-monitor 0.0
SHARED_LIBS += plasmaclock 0.0
SHARED_LIBS += plasmagenericshell 0.0
SHARED_LIBS += plasma_applet-system-monitor 0.0
SHARED_LIBS += systemsettingsview	0.0


WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdmcp
WANTLIB += Xext Xfixes Xft Xinerama Xpm Xrandr Xrender Xss
WANTLIB += Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml QtWebKit
WANTLIB += QtScript QtSql
WANTLIB += Xxf86misc Xdamage glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 iconv intl streamanalyzer strigiqtdbusclient
WANTLIB += GL soprano xml2

.include <bsd.port.mk>
