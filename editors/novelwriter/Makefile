COMMENT =		markdown-like text editor for planning and writing novels
MODPY_DISTV =	2.5.3
DISTNAME =		novelwriter-${MODPY_DISTV}
CATEGORIES =		editors
HOMEPAGE =		https://novelwriter.io/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>
REVISION =		0

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
RUN_DEPENDS =		textproc/py-enchant \
			textproc/py-lxml \
			x11/py-qt5
TEST_DEPENDS =		${RUN_DEPENDS}
# tests not included in pypi tarball
NO_TEST =		Yes

.include <bsd.port.mk>
