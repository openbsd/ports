# $OpenBSD: Makefile,v 1.14 2010/09/30 07:21:19 ajacoutot Exp $

COMMENT=	finish-the-cycle logic puzzle
CATEGORIES=	games

MAINTAINER=	Marc Espie <espie@openbsd.org>

DISTNAME=	circuit-0.1.4
REVISION=	4
MASTER_SITES=	ftp://quatramaran.ens.fr/pub/cigaes/circuit/

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0

LIB_DEPENDS=	gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

MODULES=	devel/gettext

USE_X11=	Yes

do-build:
	cd ${WRKBUILD} && $(CC) $(CFLAGS) `pkg-config --cflags gtk+-2.0` \
		`pkg-config --libs gtk+-2.0` circuit.c -o circuit

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/circuit ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/circuit.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
