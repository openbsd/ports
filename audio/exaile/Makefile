# $OpenBSD: Makefile,v 1.7 2009/12/22 15:43:15 ajacoutot Exp $

COMMENT =	music manager and player for GTK+ written in Python

V =		0.3.0.1
PKGNAME =	${DISTNAME}p0

DISTNAME =	exaile-${V}

CATEGORIES =	audio x11

HOMEPAGE =	http://www.exaile.org/

MASTER_SITES = http://www.launchpad.net/exaile/0.3.0/$V/+download/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/python

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:dbus-python->=0.82.1:x11/dbus-python \
		:py-notify->=0.1.1:devel/py-notify \
		:py-mutagen->=1.11:audio/py-mutagen \
		:py-cddb->=1.4:audio/py-cddb \
		:py-gtk2->=1.10:x11/py-gtk2 \
		::devel/libglade2 \
		::devel/desktop-file-utils \
		::multimedia/gstreamer-0.10/core \
		::multimedia/gstreamer-0.10/plugins-bad,-main \
		::multimedia/gstreamer-0.10/plugins-base,-main \
		::multimedia/gstreamer-0.10/plugins-base,-gnome \
		::multimedia/gstreamer-0.10/plugins-good,-main \
		::multimedia/gstreamer-0.10/plugins-ugly,-main \
		::multimedia/gstreamer-0.10/py-gstreamer

USE_X11 =	Yes
USE_GMAKE =	Yes
NO_REGRESS =	Yes

CONFIGURE_STYLE =none
ALL_TARGET =	compile
SUBST_VARS +=	MODPY_SITEPKG

post-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile ${WRKSRC}/data/exaile.desktop ${WRKSRC}/plugins/Makefile

.include <bsd.port.mk>
