# $OpenBSD: Makefile,v 1.1.1.1 2011/04/06 07:22:45 landry Exp $

COMMENT =		simple audio file converter for the GNOME Desktop

DISTNAME =		soundconverter-1.5.4
CATEGORIES =		audio

HOMEPAGE =		http://soundconverter.berlios.de/

MAINTAINER =		Martin Pieuchot <mp@nolizard.org>

# GPLv3 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_BERLIOS:=soundconverter/}

MODULES =		textproc/intltool \
			lang/python

BUILD_DEPENDS =		x11/gnome/py-gnome \
			devel/gettext

RUN_DEPENDS =		multimedia/gstreamer-0.10/py-gstreamer \
			multimedia/gstreamer-0.10/plugins-good \
			multimedia/gstreamer-0.10/plugins-bad \
			multimedia/gstreamer-0.10/plugins-ffmpeg \
			devel/desktop-file-utils \
			x11/gnome/py-gnome

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv"
USE_GMAKE =		Yes

NO_REGRESS=		Yes
PKG_ARCH=		*

MODPY_ADJ_FILES =	src/soundconverter.py

.include <bsd.port.mk>
