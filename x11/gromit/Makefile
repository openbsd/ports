# $OpenBSD: Makefile,v 1.14 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=		small tool to make annotations on the screen

DISTNAME=		gromit-20041213
PKGNAME=		${DISTNAME}p7
CATEGORIES=		x11

HOMEPAGE=		http://www.home.unix-ag.org/simon/gromit/

MAINTAINER=		Michael Knudsen <mk@molioner.dk>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += z pthread-stubs xcb

USE_X11=		Yes
NO_REGRESS=		Yes

DOCDIR=			${PREFIX}/share/doc/gromit/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gromit ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/gromitrc_gsr ${DOCDIR}gromitrc

.include <bsd.port.mk>
