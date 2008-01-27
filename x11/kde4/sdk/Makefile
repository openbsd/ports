# $OpenBSD: Makefile,v 1.1.1.1 2008/01/27 05:07:18 espie Exp $

COMMENT = 		K Desktop Environment, developer extensions
DISTNAME =		kdesdk-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS += antlr                 0.0 # .4.0(version: 4.0)
SHARED_LIBS += kateinterfaces        0.0 # .4.0
SHARED_LIBS += kompareinterface      0.0 # .4.0

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdesu,kdeui,kfile,khtml,kio,kjs,knewstuff2,kparts,kpty,ktexteditor,kutils,phonon,solid::x11/kde4/libs \
		kabc.>=5,kcal,kldap,kpimutils,kresources::x11/kde4/pimlibs \
		svn_client-1,svn_ra-1,svn_subr-1::devel/subversion
WANTLIB += Qt3Support QtDBus QtDesigner QtGui QtNetwork QtSvg QtXml
WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xi Xinerama
WANTLIB += Xpm Xrandr Xrender Xtst c dbus-1 fontconfig freetype
WANTLIB += glib-2.0 gthread-2.0 iconv intl jpeg m pcre pcreposix
WANTLIB += png pthread stdc++ util z
WANTLIB += bz2 fam gif streamanalyzer streams xml2 xslt
WANTLIB += lber ldap sasl2 apr-1



CONFIGURE_ARGS += -DBUILD_kmtrace:BOOL=false
.include <bsd.port.mk>
