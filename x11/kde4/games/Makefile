# $OpenBSD: Makefile,v 1.4 2008/01/21 22:08:14 espie Exp $

COMMENT =		K Desktop Environment, games
DISTNAME =		kdegames-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=	atlantic             5.0      # .4.0
SHARED_LIBS +=	atlantikclient       5.0      # .4.0
SHARED_LIBS +=	atlantikui           5.0      # .4.0
SHARED_LIBS +=	kdegames             5.0      # .4.0
SHARED_LIBS +=	kmahjongglib         0.0      # .1.0
SHARED_LIBS +=	kolflib              0.0      # .1.2
SHARED_LIBS +=	ksirtetlib           0.0      # .1.2
SHARED_LIBS +=	kggzgames            0.0      # .4.0
SHARED_LIBS +=	kggzmod              0.0      # .4.0
SHARED_LIBS +=	kggznet              0.0      # .4.0
SHARED_LIBS +=	kolfprivate          0.0      # .4.0


LIB_DEPENDS +=	kdecore.>=8,kde3support,kdeui,kdnssd,kio,knotifyconfig,kparts,kfile,knewstuff2,kpty,phonon,solid::x11/kde4/libs

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtOpenGL QtSvg QtXml
WANTLIB += bz2
WANTLIB += GL GLU Xfixes dbus-1 fam glib-2.0 gthread-2.0 iconv
WANTLIB += intl streamanalyzer streams


.include <bsd.port.mk>
