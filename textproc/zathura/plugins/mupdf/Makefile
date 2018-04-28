# $OpenBSD: Makefile,v 1.13 2018/04/28 14:57:32 landry Exp $

V =		0.3.3
COMMENT =	mupdf pdf plugin for zathura
DISTNAME =	zathura-pdf-mupdf-${V}

HOMEPAGE =	https://pwmt.org/projects/zathura-pdf-mupdf/

LIB_DEPENDS +=	textproc/mupdf
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
WANTLIB += cairo girara-gtk3 glib-2.0 mupdf

.include <bsd.port.mk>
