COMMENT=		fast and lightweight file manager

DISTNAME=		pcmanfm-1.3.2
EXTRACT_SUFX=		.tar.xz
REVISION=		0

CATEGORIES=		x11

HOMEPAGE=		http://pcmanfm.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject fm fm-gtk3 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz intl m pango-1.0 pangocairo-1.0 pthread

SITES=			${SITE_SOURCEFORGE:=pcmanfm/}

MODULES=		textproc/intltool

LIB_DEPENDS=		x11/libfm/core>=1.3.2p2
RUN_DEPENDS=		devel/desktop-file-utils

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-gtk=3

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/pcmanfm

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
