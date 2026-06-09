COMMENT=	Openbox menu editor

MODPY_DISTV=	1.2.0
GH_TAGNAME=	${MODPY_DISTV}
GH_ACCOUNT=	keithbowes
GH_PROJECT=	obmenu
CATEGORIES=	x11

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/gobject-introspection
RUN_DEPENDS=	devel/py-gobject3 \
		x11/openbox \
		x11/gtk+4

MODPY_ADJ_FILES= obxml.py

NO_TEST=	Yes

.include <bsd.port.mk>
