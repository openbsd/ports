# $OpenBSD: Makefile,v 1.25 2015/06/01 08:21:19 pea Exp $

COMMENT =	personal accounting application

DISTNAME =	homebank-5.0.2

CATEGORIES =	productivity x11

HOMEPAGE =	http://homebank.free.fr

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/public/ \
		${HOMEPAGE}/public/old/

MODULES =	devel/gettext \
		textproc/intltool

WANTLIB = 	c fontconfig freetype pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 atk-1.0 glib-2.0 gobject-2.0 cairo \
		m z gio-2.0 osp pthread gdk_pixbuf-2.0 ofx \
		cairo-gobject gdk-3 gtk-3

LIB_DEPENDS =	x11/gtk+3 \
		devel/libofx 

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

USE_GMAKE =	Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

post-extract:
	@cd ${WRKSRC} && chmod +x install-sh

.include <bsd.port.mk>
