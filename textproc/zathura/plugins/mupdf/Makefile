# $OpenBSD: Makefile,v 1.14 2018/06/27 21:04:04 espie Exp $

V =		0.3.3
COMMENT =	mupdf pdf plugin for zathura
DISTNAME =	zathura-pdf-mupdf-${V}
REVISION =	0

HOMEPAGE =	https://pwmt.org/projects/zathura-pdf-mupdf/

LIB_DEPENDS +=	textproc/mupdf
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
WANTLIB += cairo girara-gtk3 glib-2.0 mupdf

.include <bsd.port.mk>
