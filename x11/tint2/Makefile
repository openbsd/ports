# $OpenBSD: Makefile,v 1.1.1.1 2015/09/11 14:14:07 sthen Exp $

COMMENT=        freedesktop-compliant panel

V=		0.12.2
CATEGORIES=	x11
DISTNAME=	tint2-$V
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{archive${EXTRACT_SUFX}?ref=v$V}
WRKDIST=	${WRKDIR}/tint2-v$V-dc300c021531f47cca336e15b50adf3b4a9bc9ae
INSTDIR=	${PREFIX}/tint2

HOMEPAGE=	https://gitlab.com/o9000/tint2/

# GPLv2 only
PERMIT_PACKAGE_CDROM= YES

MASTER_SITES=   https://gitlab.com/o9000/tint2/repository/

WANTLIB += Imlib2 X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread rsvg-2 startup-notification-1 z

LIB_DEPENDS=    graphics/imlib2 \
                devel/pango \
                devel/startup-notification \
		x11/gnome/librsvg \
                x11/gtk+2
RUN_DEPENDS=    x11/py-gtk2 \
                devel/desktop-file-utils

MODULES=        devel/cmake \
		devel/gettext \
		lang/python \
		x11/gnome

MODGNOME_TOOLS+= gtk-update-icon-cache

NO_TEST=        Yes

CONFIGURE_ARGS= -DMANDIR="${PREFIX}/man"

post-install:
	cp -R ${WRKSRC}/sample/ ${PREFIX}/share/examples/tint2
	rm ${PREFIX}/share/tint2/*.tint2rc

.include <bsd.port.mk>

