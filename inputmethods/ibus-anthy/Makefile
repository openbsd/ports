# $OpenBSD: Makefile,v 1.16 2013/10/01 21:22:08 fgsch Exp $

COMMENT =	japanese input engine for ibus

DISTNAME =	ibus-anthy-1.5.4

SHARED_LIBS =	anthygobject-1.0	1.0 # 5.504

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://code.google.com/p/ibus/

MAINTAINER =	Federico G. Schwindt <fgsch@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	anthy anthydic ffi glib-2.0 gobject-2.0 m pcre pthread

MASTER_SITES =	https://ibus.googlecode.com/files/

MODULES =	devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS =	inputmethods/ibus>=1.5.0
RUN_DEPENDS =	devel/desktop-file-utils \
		inputmethods/ibus>=1.5.0 \
		x11/gtk+2,-guic
LIB_DEPENDS =	inputmethods/anthy

USE_GMAKE =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS = --with-kasumi-exec=${LOCALBASE}/bin/kasumi \
		 --with-kasumi-icon=${LOCALBASE}/share/pixmaps/kasumi.png

.include <bsd.port.mk>
