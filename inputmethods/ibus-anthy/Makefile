# $OpenBSD: Makefile,v 1.11 2013/03/11 11:12:33 espie Exp $

COMMENT =	japanese input engine for ibus

DISTNAME =	ibus-anthy-1.5.0

SHARED_LIBS =	anthygobject-1.0	0.0 # 5.500

CATEGORIES =	inputmethods japanese

HOMEPAGE =	http://code.google.com/p/ibus/

MAINTAINER =	Federico G. Schwindt <fgsch@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	anthy anthydic ffi glib-2.0 gobject-2.0 gthread-2.0 \
		m pcre pthread

MASTER_SITES =	http://ibus.googlecode.com/files/

MODULES =	devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS =	devel/gobject-introspection \
		inputmethods/ibus>=1.5.0
RUN_DEPENDS =	inputmethods/ibus>=1.5.0
LIB_DEPENDS =	inputmethods/anthy

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS = --enable-introspection \
		 --with-kasumi-exec=${LOCALBASE}/bin/kasumi \
		 --with-kasumi-icon=${LOCALBASE}/share/pixmaps/kasumi.png

.include <bsd.port.mk>
