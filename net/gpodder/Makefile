COMMENT=		media aggregator and podcast client

MODPY_DISTV=	3.11.4
REVISION=		4

GH_ACCOUNT=		gpodder
GH_PROJECT=		gpodder
GH_TAGNAME=		${MODPY_DISTV}

CATEGORIES=		net www

HOMEPAGE=		https://gpodder.github.io/

MAINTAINER=		Tim Meunier <trondd@kagu-tsuchi.com>

# GPLv3+
PERMIT_PACKAGE=		Yes

MODULES=		lang/python \
			textproc/intltool
MODPY_PYBUILD=		setuptools

TEST_ENV=		PYTEST=py.test

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/gettext,-runtime \
			devel/py-html5lib \
			devel/py-gobject3 \
			www/py-requests \
			net/mygpoclient \
			textproc/py-podcastparser \
			www/yt-dlp \
			www/webkitgtk4 \
			x11/dbus-python \
			x11/gtk+4,-guic
TEST_DEPENDS=		devel/py-coverage \
			devel/py-minimock \
			devel/py-test \
			devel/py-test-cov \
			textproc/py-podcastparser \
			net/mygpoclient

USE_GMAKE=		Yes
MAKE_FILE=		makefile
MAKE_ENV=		LC_CTYPE=en_US.UTF-8 \
			PYTHON=${MODPY_BIN} \
			GPODDER_MANPATH_NO_SHARE="yes"

ALL_TARGET=		messages

TEST_TARGET=		unittest

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} DESTDIR=/ ${MAKE_PROGRAM} \
		-f ${MAKE_FILE} install
	sed -i s,${PREFIX},${TRUEPREFIX}, \
		${PREFIX}/share/applications/*.desktop
	${MODPY_COMPILEALL} ${PREFIX}/share/gpodder/extensions/

.include <bsd.port.mk>
