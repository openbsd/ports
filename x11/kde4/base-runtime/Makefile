# $OpenBSD: Makefile,v 1.2 2008/02/09 13:18:16 espie Exp $

COMMENT =		K Desktop Environment, base runtime
DISTNAME =		kdebase-runtime-${VERSION}
PKGNAME =		${DISTNAME}

LIB_DEPENDS +=	kdecore.>=8,kaudiodevicelist,kde3support,kdesu,kdeui,kdnssd,kfile,khtml,kio,kjs,kmediaplayer,knewstuff2,knotifyconfig,kparts,kpty,ktexteditor,kutils,phonon,solid::x11/kde4/libs \
	    xine::multimedia/xine-lib


WANTLIB += ICE SM X11 Xau Xcursor Xdmcp
WANTLIB += Xext Xfixes Xft Xi Xinerama Xpm Xrandr Xrender
WANTLIB += Xtst c fontconfig freetype jpeg m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml
WANTLIB += Half Iex IlmImf Imath gif bz2 pcre pcreposix
WANTLIB += dbus-1 fam glib-2.0 gthread-2.0 iconv intl
WANTLIB += streamanalyzer streams
WANTLIB += clucene soprano sopranoclient sopranoindex sopranoserver
WANTLIB += strigiqtdbusclient


.include <bsd.port.mk>
