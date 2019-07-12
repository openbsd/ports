# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:47 sthen Exp $

COMMENT =		web-based notebook for interactive computing

MODPY_EGG_VERSION =	5.7.8
DISTNAME =		notebook-${MODPY_EGG_VERSION}
PKGNAME =		jupyter-notebook-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		www devel

HOMEPAGE =		https://jupyter.org/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-ipython_genutils${MODPY_FLAVOR} \
			devel/py-jupyter_client${MODPY_FLAVOR}>=5.2.0 \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.4.0 \
			devel/py-nbconvert${MODPY_FLAVOR} \
			devel/py-nbformat${MODPY_FLAVOR} \
			devel/py-send2trash${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR}>=4.2.1 \
			net/py-zmq${MODPY_FLAVOR}>=17 \
			sysutils/py-prometheus_client${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-terminado${MODPY_FLAVOR}>=0.8.1 \
			www/py-tornado${MODPY_FLAVOR}>=4.1,<7

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-nose-warnings-filters${MODPY_FLAVOR} \
			devel/py-nbval${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-selenium${MODPY_FLAVOR}

# XXX once we have a port of pandoc, we can make docs.

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-futures \
			net/py-ipaddress
TEST_DEPENDS +=		devel/py-mock
.else
PKGNAME =		jupyter-notebook${MODPY_MAJOR_VERSION}-${MODPY_EGG_VERSION}
.endif

post-install:
	mv ${PREFIX}/bin/jupyter-bundlerextension{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-nbextension{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-notebook{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-serverextension{,${MODPY_BIN_SUFFIX}}

# XXX exclude selenium tests as recommended, and exclude tests that use
# send2trash as they error out with "Trashing on system internal mounts is not
# supported".
do-test:
	cd ${WRKSRC} && env LC_CTYPE=C.UTF-8 HOME=${WRKSRC} \
		${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} notebook -v \
		--exclude=delete --exclude=follow_file --exclude=selenium

.include <bsd.port.mk>
