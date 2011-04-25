# $OpenBSD: Makefile,v 1.10 2011/04/25 15:01:28 jolan Exp $

COMMENT =		K Desktop Environment, extra plasmoids
DISTNAME =		extragear-plasma-${VERSION}
REVISION =		1

MASTER_SITES =		${MASTER_SITE_KDE:=stable/${VERSION}/src/extragear/} 

LIB_DEPENDS +=	x11/kde4/libs \
		x11/kde4/pimlibs \
		x11/kde4/base-workspace

WANTLIB += GL GLU ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft
WANTLIB += Xi Xinerama Xpm Xrandr Xrender Xtst c fontconfig freetype
WANTLIB += glib-2.0 gthread-2.0 iconv intl m png pthread
WANTLIB += z
WANTLIB += QtDBus QtGui QtNetwork QtOpenGL QtSvg QtXml
WANTLIB += bz2 fam streamanalyzer streams
WANTLIB += kdecore>=8 kdeui kio solid kfile syndication plasma




CONFIGURE_ARGS +=	-DHAVE_LIBINTL_H:INTERNAL=1
CONFIGURE_ARGS +=	-DLIBINTL_HAS_DGETTEXT:INTERNAL=1

.include <bsd.port.mk>
