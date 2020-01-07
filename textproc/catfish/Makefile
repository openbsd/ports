# $OpenBSD: Makefile,v 1.34 2020/01/07 08:56:14 landry Exp $

COMMENT =	versatile file searching tool

XFCE_GOODIE =	catfish
XFCE_VERSION =	1.4.12
MODPY_EGG_VERSION =	${XFCE_VERSION}
CATEGORIES =	textproc

MAINTAINER =	Landry Breuil <landry@openbsd.org>

HOMEPAGE =	https://bluesabre.org/projects/catfish/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python \
		x11/xfce4 \
		textproc/intltool
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=bin/catfish
NO_BUILD=	Yes

RUN_DEPENDS =	devel/py-gobject3${MODPY_FLAVOR} \
		devel/desktop-file-utils \
		devel/xdg-utils \
		devel/py-pexpect${MODPY_FLAVOR} \
		x11/gtk+3,-guic

BUILD_DEPENDS +=	${_MODPY_BUILD_DEPENDS} \
		devel/py-distutils-extra${MODPY_FLAVOR}

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

post-patch:
	${SUBST_CMD} ${WRKSRC}/setup.py

.include <bsd.port.mk>
