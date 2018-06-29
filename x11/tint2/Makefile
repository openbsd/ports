# $OpenBSD: Makefile,v 1.9 2018/06/29 22:16:35 espie Exp $

COMMENT=	freedesktop-compliant panel

V=		16.2
CATEGORIES=	x11
DISTNAME=	tint2-$V
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{archive${EXTRACT_SUFX}?ref=v$V}
WRKDIST=	${WRKDIR}/tint2-v$V-b810bad93ff65854137fbd2f344ad2f99338008f
REVISION=	1

HOMEPAGE=	https://gitlab.com/o9000/tint2/

# GPLv2 only
PERMIT_PACKAGE_CDROM= YES

MASTER_SITES=	https://gitlab.com/o9000/tint2/repository/

WANTLIB += Imlib2 X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread rsvg-2 startup-notification-1
WANTLIB += z

BUILD_DEPENDS=	devel/gettext-tools

LIB_DEPENDS=	devel/pango \
		devel/startup-notification \
		x11/gnome/librsvg \
		graphics/imlib2 \
		x11/gtk+2

MODULES=	devel/cmake \
		x11/gnome

MODGNOME_TOOLS+= desktop-file-utils \
		gtk-update-icon-cache \
		shared-mime-info

NO_TEST=	Yes

.include <bsd.port.mk>
