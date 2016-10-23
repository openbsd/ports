# $OpenBSD: Makefile,v 1.10 2016/10/23 01:59:16 czarkoff Exp $

COMMENT=		media aggregator and podcast client

MODPY_EGG_VERSION=	3.9.1
DISTNAME=		gpodder-${MODPY_EGG_VERSION}
CATEGORIES=		net www

HOMEPAGE=		http://gpodder.org/

MAINTAINER=		Tim Meunier <trondd@kagu-tsuchi.com>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT=		gpodder
GH_PROJECT=		gpodder
GH_TAGNAME=		${DISTNAME}

MODULES=		lang/python

BUILD_DEPENDS=		textproc/intltool
RUN_DEPENDS=		devel/desktop-file-utils \
			devel/gettext \
			net/mygpoclient \
			textproc/py-feedparser \
			x11/dbus-python \
			x11/gtk+3,-guic \
			x11/py-gtk2
TEST_DEPENDS=		devel/py-minimock \
			devel/py-coverage \
			net/mygpoclient \
			textproc/py-feedparser

USE_GMAKE=		Yes
MAKE_FILE=		makefile
MAKE_ENV=		PYTHON=${MODPY_BIN} \
			GPODDER_MANPATH_NO_SHARE="yes"
ALL_TARGET=		messages

TEST_TARGET=		unittest

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		-f ${MAKE_FILE} install

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/gpodder/extensions/

.include <bsd.port.mk>
