COMMENT=	Openbox menu editor

MODPY_DISTV =	1.1.2
GH_TAGNAME =	${MODPY_DISTV}
GH_ACCOUNT =	keithbowes
GH_PROJECT =	obmenu
CATEGORIES=	x11

# GPLv2
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/gobject-introspection
# there is some gtk+4 support but it's had some problems so no longer
# used by default upstream - available behind OBMENU_GTK4 env var
RUN_DEPENDS=	x11/openbox \
		x11/gtk+3

MODPY_ADJ_FILES= pipes/obm-* obxml.py obmenu

post-configure:
	sed -i "s/version='1.1',/version='${MODPY_DISTV}',/" ${WRKSRC}/setup.py

.include <bsd.port.mk>
