# $OpenBSD: Makefile,v 1.4 2008/01/22 22:01:52 espie Exp $

COMMENT =		K Desktop Environment, network
DISTNAME =		kdenetwork-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=  gadu_kopete             0.0 # .1.0
SHARED_LIBS +=  kgetcore                0.0 # .4.0
SHARED_LIBS +=  kopete                  3.0 # .4.0
SHARED_LIBS +=  kopete_msn_shared       2.0 # .4.0
SHARED_LIBS +=  kopete_videodevice      2.0 # .4.0
SHARED_LIBS +=  kopeteaddaccountwizard  0.0 # .1.0
SHARED_LIBS +=  kopetechatwindow_shared 0.0 # .1.0
SHARED_LIBS +=  kopeteidentity          0.0 # .1.0
SHARED_LIBS +=  kopeteprivacy           0.0 # .1.0
SHARED_LIBS +=  kyahoo                  0.0 # .1.0
SHARED_LIBS +=  oscar                   0.0 # .1.0

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdeui,khtml,kio,kjs,knotifyconfig,kparts,ktexteditor,kutils,kfile,kpty,phonon,solid::x11/kde4/libs \
		kabc.>=5,syndication,kldap,kresources::x11/kde4/pimlibs \
		sqlite3::databases/sqlite3 \
		plasma::x11/kde4/base-workspace \
		xmms::audio/xmms

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype jpeg m png
WANTLIB += pthread stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork
WANTLIB += gif bz2 pcre pcreposix
WANTLIB += Xfixes Xss dbus-1 fam glib-2.0 gthread-2.0 iconv intl
WANTLIB += ssl streamanalyzer streams xml2 xslt sasl2 lber ldap
WANTLIB += qimageblitz


.include <bsd.port.mk>
