# $OpenBSD: Makefile,v 1.10 2007/09/02 21:08:21 naddy Exp $

COMMENT-main=	"lightweight BitTorrent command line and daemon client"
COMMENT-gui=	"lightweight BitTorrent client with graphical interface"

VER=		0.81
DISTNAME=	Transmission-${VER}
PKGNAME-main=	transmission-${VER}
PKGNAME-gui=	transmission-gui-${VER}
CATEGORIES=	net
HOMEPAGE=	http://transmission.m0k.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.m0k.org/transmission/files/

PSEUDO_FLAVORS=	no_gui
FLAVOR?=

MULTI_PACKAGES=	-main

WANTLIB=	c crypto m pthread
WANTLIB-main=	${WANTLIB} event

WRKDIST=	${WRKDIR}
USE_GMAKE=	Yes
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix="${PREFIX}"

.if ${FLAVOR:L:Mno_gui}
CONFIGURE_ARGS+=--disable-gtk
.else
MULTI_PACKAGES+=-gui
MODULES=	devel/gettext
WANTLIB-gui=	${WANTLIB} X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
		Xrandr Xrender atk-1.0.>=1809.0 cairo expat fontconfig \
		freetype glib-2.0.>=1200.0 glitz gmodule-2.0.>=1200.0 \
		gobject-2.0.>=1200.0 pango-1.0.>=1300.0 pangoft2-1.0.>=1300.0 \
		pangocairo-1.0.>=1300.0 png z
LIB_DEPENDS=	gdk_pixbuf-2.0.>=1000.0,gdk-x11-2.0.>=1000.0,gtk-x11-2.0.>=1000.0::x11/gtk+2
LIB_DEPENDS-main=
RUN_DEPENDS-main=
RUN_DEPENDS-gui=:${PKGNAME-main}:net/transmission,-main ${RUN_DEPENDS}
USE_X11=	Yes
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
