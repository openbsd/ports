# $OpenBSD: Makefile,v 1.1 2008/01/21 21:47:56 espie Exp $

COMMENT =		K Desktop Environment, base workspace
DISTNAME =		kdebase-workspace-${VERSION}
PKGNAME =		${DISTNAME}

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdefakes,kdesu,kdeui,kfile,kio,knewstuff2,knotifyconfig,kparts,kpty,kutils,phonon,solid,threadweaver::x11/kde4/libs \
		xklavier::x11/gnome/libxklavier \
		qimageblitz::x11/kde4/qimageblitz \
		usb::devel/libusb

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

WANTLIB += GL GLU ICE SM X11 XRes Xau Xcomposite Xcursor Xdmcp
WANTLIB += Xext Xfixes Xft Xi Xinerama Xpm Xrandr Xrender Xss
WANTLIB += Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml
WANTLIB += QtOpenGL QtScript
WANTLIB += bz2
WANTLIB += Xxf86misc Xdamage dbus-1 fam glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 iconv intl streamanalyzer streams strigiqtdbusclient

.include <bsd.port.mk>
