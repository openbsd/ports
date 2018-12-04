# $OpenBSD: Makefile,v 1.16 2018/12/04 19:11:23 sthen Exp $

V =		0.3.4
COMMENT =	mupdf pdf plugin for zathura
DISTNAME =	zathura-pdf-mupdf-${V}

HOMEPAGE =	https://pwmt.org/projects/zathura-pdf-mupdf/

MASTER_SITES =	https://pwmt.org/projects/zathura/plugins/download/ \
		http://distfiles.gentoo.org/distfiles/

BUILD_DEPENDS = textproc/mupdf \
		textproc/zathura/core
LIB_DEPENDS +=	graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2
CONFIGURE_ENV += LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib `pkg-config --libs libjpeg libopenjp2` -ljbig2dec"

WANTLIB += cairo girara-gtk3 glib-2.0 jbig2dec jpeg openjp2

.include <bsd.port.mk>
