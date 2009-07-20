# $OpenBSD: Makefile,v 1.5 2009/07/20 14:28:54 naddy Exp $

COMMENT =		K Desktop Environment, utils
DISTNAME =		kdeutils-${VERSION}
PKGNAME =		${DISTNAME}p0

SHARED_LIBS +=  kerfuffle            0.0      # .4.0
SHARED_LIBS +=  kmilo                3.0      # .4.0
SHARED_LIBS +=  superkaramba         0.0      # .4.0

LIB_DEPENDS += 	kdecore.>=8,kde3support,kdesu,kdeui,kio,kparts,kfile,knewstuff2,krosscore,kutils,kpty,solid,threadweaver::x11/kde4/libs \
		kabc.>=5,kldap,kresources::x11/kde4/pimlibs \
		gmp::devel/gmp \
		python2.5:python->=2.5,<2.6:lang/python/2.5 \
		qimageblitz::x11/kde4/qimageblitz \
		plasma::x11/kde4/base-workspace

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xi Xinerama Xpm
WANTLIB += Xrandr Xrender Xtst c fontconfig freetype m png pthread
WANTLIB += stdc++ util z
WANTLIB += Qt3Support QtDBus QtGui QtSvg QtXml QtNetwork
WANTLIB += bz2
WANTLIB += Xfixes fam glib-2.0 gthread-2.0 iconv intl lber ldap
WANTLIB += sasl2 streamanalyzer streams


.include <bsd.port.mk>
