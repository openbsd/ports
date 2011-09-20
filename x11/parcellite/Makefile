# $OpenBSD: Makefile,v 1.1.1.1 2011/09/20 09:04:41 landry Exp $

COMMENT=	lightweight GTK+ clipboard manager

DISTNAME=	parcellite-1.0.2rc5
CATEGORIES=	x11

MAINTAINER=	Lawrence Teo <lteo@devio.us>

HOMEPAGE=	http://parcellite.sourceforge.net/

# GPLv3+
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=parcellite/}

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv intl m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs xcb xcb-render xcb-shm z

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBS="`pkg-config --libs gtk+-2.0`"

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	x11/gtk+2

RUN_DEPENDS=	devel/desktop-file-utils

FAKE_FLAGS=	autostartdir=${PREFIX}/share/examples/parcellite/xdg/autostart/

USE_GMAKE=	yes

# Author accidentally included the parcellite binary and *.o files in the
# source tarball for 1.0.2rc5, so a clean is needed before build. Author
# has been notified via their project bug tracker (Bug ID 3411337).
pre-build:
	( cd ${WRKBUILD} && ${MAKE_PROGRAM} clean )

.include <bsd.port.mk>
