# $OpenBSD: Makefile,v 1.3 2008/02/15 14:36:24 ajacoutot Exp $

COMMENT=	handy personal organizer

DISTNAME=	osmo-0.2.0
CATEGORIES=	productivity

HOMEPAGE=	http://clay.ll.pl/osmo/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=osmo-pim/}

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		xml2.>=6::textproc/libxml \
		ical::textproc/libical \
		gringotts::security/libgringotts
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		BUILD_CFLAGS="${CFLAGS}"

.include <bsd.port.mk>
