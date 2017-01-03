# $OpenBSD: Makefile,v 1.3 2017/01/03 19:19:48 landry Exp $

COMMENT =		Jupyter protocol implementation and client libraries

MODPY_EGG_VERSION =	4.4.0
DISTNAME =		jupyter_client-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://jupyter.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

RUN_DEPENDS =		devel/py-jupyter_core${MODPY_FLAVOR}>=4.2.1 \
			devel/py-traitlets${MODPY_FLAVOR} \
			net/py-zmq${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/ipython${MODPY_FLAVOR}>=5.1.0 \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR}>=4.5.2 \
			net/py-msgpack${MODPY_FLAVOR}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

post-install:
	mv ${PREFIX}/bin/jupyter-kernelspec ${PREFIX}/bin/jupyter-kernelspec${MODPY_BIN_SUFFIX}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} jupyter_client

.include <bsd.port.mk>
