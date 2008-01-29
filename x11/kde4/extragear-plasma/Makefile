# $OpenBSD: Makefile,v 1.1.1.1 2008/01/29 00:27:18 espie Exp $

COMMENT =		K Desktop Environment, extra plasmoids
DISTNAME =		extragear-plasma-${VERSION}
PKGNAME =		${DISTNAME}

MASTER_SITES =		${MASTER_SITE_KDE:=stable/${VERSION}/src/extragear/}

LIB_DEPENDS +=	kdecore.>=8,kdeui,kio,solid::x11/kde4/libs \
		syndication::x11/kde4/pimlibs \
		plasma,taskmanager::x11/kde4/base-workspace

WANTLIB += GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft
WANTLIB += Xi Xinerama Xpm Xrandr Xrender Xtst c fontconfig freetype
WANTLIB += glib-2.0 gthread-2.0 iconv intl m png pthread stdc++
WANTLIB += z
WANTLIB += QtDBus QtGui QtNetwork QtOpenGL QtSvg QtXml
WANTLIB += bz2 fam streamanalyzer streams




CONFIGURE_ARGS +=	-DHAVE_LIBINTL_H:INTERNAL=1
CONFIGURE_ARGS +=	-DLIBINTL_HAS_DGETTEXT:INTERNAL=1

.include <bsd.port.mk>
