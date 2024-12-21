COMMENT =	multi-language Vulkan/GL/GLES/EGL/GLX/WGL loader-generator

MODPY_DISTV =	2.0.6
GH_TAGNAME =	v${MODPY_DISTV}
GH_ACCOUNT =	Dav1dde
GH_PROJECT =	glad
REVISION =	1

CATEGORIES =	graphics

HOMEPAGE =	https://glad.dav1d.de/
MAINTAINER =	Jose Maldonado <josemald89@gmail.com>

# MIT - Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	www/py-jinja2 \
		textproc/py-MarkupSafe

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/glad
	cp -r ${WRKDIST}/example/* ${PREFIX}/share/examples/glad

.include <bsd.port.mk>
