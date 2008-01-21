# $OpenBSD: Makefile,v 1.5 2008/01/21 21:47:56 espie Exp $

COMMENT =		K Desktop Environment, base
DISTNAME =		kdebase-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=	kateinterfaces       2.0      # .4.0
SHARED_LIBS +=	kdecorations         3.0      # .4.0
SHARED_LIBS +=	kfontinst            2.0      # .4.0
SHARED_LIBS +=	kfontinstui          0.0      # .4.0
SHARED_LIBS +=	kickermain           3.0      # .2.0
SHARED_LIBS +=	konq                 8.0      # .6.0
SHARED_LIBS +=	konqsidebarplugin    5.0      # .4.0
SHARED_LIBS +=	kscreensaver         8.0      # .5.0
SHARED_LIBS +=	ksgrd                5.0      # .4.0
SHARED_LIBS +=	ksplashthemes        2.0      # .4.0
SHARED_LIBS +=	kworkspace           0.0      # .1.0
SHARED_LIBS +=	plasma               0.0      # .1.0
SHARED_LIBS +=	taskbar              5.0      # .4.0
SHARED_LIBS +=	taskmanager          3.0      # .4.0
SHARED_LIBS +=	dolphinprivate       0.0      # .1.0
SHARED_LIBS +=	konquerorprivate     0.0      # .4.0

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdesu,kdeui,kfile,khtml,kio,kjs,knotifyconfig,kparts,kpty,ktexteditor,kutils,phonon,solid::x11/kde4/libs \
		qimageblitz::x11/kde4/qimageblitz

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp
WANTLIB += Xext Xfixes Xft Xi Xinerama Xpm Xrandr Xrender
WANTLIB += Xt Xtst c fontconfig freetype jpeg m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml
WANTLIB += gif bz2 pcre pcreposix
WANTLIB += dbus-1 fam glib-2.0 gthread-2.0 iconv intl
WANTLIB += streams streamanalyzer


.include <bsd.port.mk>
