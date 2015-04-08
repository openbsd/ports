# $OpenBSD: Makefile,v 1.21 2015/04/08 06:43:57 kili Exp $

COMMENT =	versatile file searching tool

DISTNAME =	catfish-1.2.2
CATEGORIES =	textproc
EXTRACT_SUFX =	.tar.bz2

MAINTAINER =	Landry Breuil <landry@openbsd.org>

HOMEPAGE =	http://smdavis.us/projects/catfish/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	https://launchpad.net/catfish-search/1.2/1.2.2/+download/

MODULES=	lang/python
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=--python=${MODPY_BIN}
USE_GMAKE=	Yes

RUN_DEPENDS =	devel/py-gobject3 \
		x11/dbus-python \
		devel/desktop-file-utils \
		devel/py-xdg \
		devel/py-pexpect \
		x11/gtk+3,-guic

BUILD_DEPENDS =	textproc/intltool

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

.include <bsd.port.mk>
