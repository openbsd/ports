# $OpenBSD: Makefile,v 1.9 2013/03/10 22:55:05 espie Exp $

COMMENT =		simple audio file converter for the GNOME Desktop

DISTNAME =		soundconverter-1.5.4
REVISION =		6
CATEGORIES =		audio

HOMEPAGE =		http://soundconverter.berlios.de/

MAINTAINER =		Martin Pieuchot <mpi@openbsd.org>

# GPLv3 
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_BERLIOS:=soundconverter/}

MODULES =		textproc/intltool \
			lang/python

BUILD_DEPENDS =		x11/gnome/py-gnome \
			devel/gettext

RUN_DEPENDS =		multimedia/gstreamer-0.10/py-gstreamer \
			multimedia/gstreamer-0.10/plugins-good \
			multimedia/gstreamer-0.10/plugins-ugly \
			devel/desktop-file-utils \
			x11/gnome/py-gnome \
			x11/gtk+2,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv"
USE_GMAKE =		Yes

NO_TEST=		Yes
PKG_ARCH=		*

MODPY_ADJ_FILES =	src/soundconverter.py

.include <bsd.port.mk>
