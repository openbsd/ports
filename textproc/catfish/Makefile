# $OpenBSD: Makefile,v 1.23 2016/04/26 20:30:05 landry Exp $

COMMENT =	versatile file searching tool

MODPY_EGG_VERSION =	1.4.2
DISTNAME =	catfish-${MODPY_EGG_VERSION}
CATEGORIES =	textproc
EXTRACT_SUFX =	.tar.bz2

MAINTAINER =	Landry Breuil <landry@openbsd.org>

HOMEPAGE =	http://smdavis.us/projects/catfish/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	https://launchpad.net/catfish-search/${MODPY_EGG_VERSION:C/..$//}/${MODPY_EGG_VERSION}/+download/

MODULES=	lang/python
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=bin/catfish
NO_BUILD=	Yes

RUN_DEPENDS =	devel/py-gobject3${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		devel/xdg-utils \
		devel/py-pexpect${MODPY_FLAVOR} \
		x11/gtk+3,-guic

BUILD_DEPENDS =	textproc/intltool
BUILD_DEPENDS +=	${_MODPY_BUILD_DEPENDS}

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

.include <bsd.port.mk>
