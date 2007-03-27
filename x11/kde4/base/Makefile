# $OpenBSD: Makefile,v 1.3 2007/03/27 16:00:44 espie Exp $

COMMENT=		"K Desktop Environment, base"
DISTNAME=		kdebase-${VERSION}
PKGNAME=		${DISTNAME}p1

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

LIB_DEPENDS+=	kdecore.>=8,kde3support,kdefakes,kdefx,kdeprint,kdeprint_management,kdesu,kdeui,kdnssd,khtml,kio,kjs,knewstuff,knotifyconfig,kparts,ktexteditor,kutils,kwalletclient,phononcore,solid,solidifaces::x11/kde4/libs \
		kabc.>=5::x11/kde4/pimlibs \
		usb::devel/libusb


WANTLIB += GL GLU ICE SM X11 XRes Xau Xcomposite Xcursor Xdmcp
WANTLIB += Xext Xfixes Xft Xi Xinerama Xpm Xrandr Xrender Xss
WANTLIB += Xt Xtst c fontconfig freetype jpeg m png pthread ssl
WANTLIB += stdc++ util xkbfile z
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml
WANTLIB += Half Iex IlmImf Imath gif bz2 pcre pcreposix sasl2

.include <bsd.port.mk>
