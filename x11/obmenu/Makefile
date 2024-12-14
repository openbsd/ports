COMMENT=	Openbox menu editor

MODPY_EGG_VERSION = 1.1
GH_TAGNAME =	1.1.1
GH_ACCOUNT =	keithbowes
GH_PROJECT =	obmenu
CATEGORIES=	x11
REVISION =	1

# GPL
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
BUILD_DEPENDS=	devel/gobject-introspection
RUN_DEPENDS=	x11/openbox \
		x11/gtk+4

MODPY_ADJ_FILES =pipes/obm-* obxml.py obmenu

.include <bsd.port.mk>
