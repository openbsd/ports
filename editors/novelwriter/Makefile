COMMENT =		markdown-like text editor for planning and writing novels
MODPY_EGG_VERSION =	2.4.1
DISTNAME =		novelwriter-${MODPY_EGG_VERSION}
CATEGORIES =		editors
HOMEPAGE =		https://novelwriter.io/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
RUN_DEPENDS =		textproc/py-enchant${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS}
# tests not included in pypi tarball
NO_TEST =		Yes

.include <bsd.port.mk>
