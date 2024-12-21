COMMENT =	simple viewer for NFO files
MODPY_DISTV =	1.28.1
DISTNAME =	nfoview-${MODPY_DISTV}
CATEGORIES =	textproc x11
REVISION =	5

GH_ACCOUNT =	otsaloma
GH_PROJECT =	nfoview
GH_TAGNAME =	${MODPY_DISTV}

HOMEPAGE =	https://otsaloma.io/nfoview/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

BUILD_DEPENDS =	devel/gettext,-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/py-gobject3 \
		fonts/cascadia-code \
		x11/gtk+4,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

# tests fail with Trace/BPT trap
MODPY_PYTEST_ARGS = -v nfoview/unittest.py nfoview/test/test_*.py
TEST_DEPENDS =	devel/py-gobject3

post-patch:
	sed -i "s,share/man,man,g" ${WRKSRC}/setup.py

post-install:
	sed -i \
	    -e 's,^DATA_DIR = .*$$,DATA_DIR = "${TRUEPREFIX}/share/nfoview",' \
	    -e 's,^LOCALE_DIR = .*$$,LOCALE_DIR = "${TRUEPREFIX}/share/locale",' \
	    ${WRKINST}${MODPY_SITEPKG}/nfoview/paths.py

.include <bsd.port.mk>
