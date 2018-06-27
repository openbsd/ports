# $OpenBSD: Makefile,v 1.21 2018/06/27 21:03:55 espie Exp $

COMMENT =	japanese input engine for ibus

GH_ACCOUNT =	ibus
GH_PROJECT =	ibus-anthy
GH_TAGNAME =	1.5.4
REVISION =	3

SHARED_LIBS =	anthygobject-1.0	1.0 # 5.504

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/fujiwarat/ibus-anthy/wiki

MAINTAINER =	Federico G. Schwindt <fgsch@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  anthy anthydic ffi glib-2.0 gobject-2.0 iconv intl m pcre
WANTLIB += pthread

# XXX: Remove when upgrading to newer tag
MASTER_SITES =	https://distfiles.nl/

MODULES =	lang/python \
		textproc/intltool

BUILD_DEPENDS =	inputmethods/ibus>=1.5.0
RUN_DEPENDS =	devel/desktop-file-utils \
		inputmethods/ibus>=1.5.0 \
		x11/gtk+3,-guic
LIB_DEPENDS =	inputmethods/anthy

USE_GMAKE =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS = --with-kasumi-exec=${LOCALBASE}/bin/kasumi \
		 --with-kasumi-icon=${LOCALBASE}/share/pixmaps/kasumi.png

.include <bsd.port.mk>
