# $OpenBSD: Makefile,v 1.5 2008/09/11 19:52:18 martynas Exp $

COMMENT =		K Desktop Environment, extra plasmoids
DISTNAME =		extragear-plasma-${VERSION}
PKGNAME =		${DISTNAME}p1

MASTER_SITES =		${MASTER_SITE_KDE:=stable/${VERSION}/src/extragear/} \
			http://mirrors.protection.cx/~martynas/kde/${VERSION}/extragear/

LIB_DEPENDS +=	kdecore.>=8,kdeui,kio,solid,kfile::x11/kde4/libs \
		syndication::x11/kde4/pimlibs \
		plasma::x11/kde4/base-workspace

WANTLIB += GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft
WANTLIB += Xi Xinerama Xpm Xrandr Xrender Xtst c fontconfig freetype
WANTLIB += glib-2.0 gthread-2.0 iconv intl m png pthread
WANTLIB += z
WANTLIB += QtDBus QtGui QtNetwork QtOpenGL QtSvg QtXml
WANTLIB += bz2 fam streamanalyzer streams




CONFIGURE_ARGS +=	-DHAVE_LIBINTL_H:INTERNAL=1
CONFIGURE_ARGS +=	-DLIBINTL_HAS_DGETTEXT:INTERNAL=1

.include <bsd.port.mk>
