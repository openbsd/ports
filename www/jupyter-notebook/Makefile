# $OpenBSD: Makefile,v 1.7 2017/05/23 17:44:39 shadchin Exp $

COMMENT =		web-based notebook for interactive computing

MODPY_EGG_VERSION =	5.0.0
DISTNAME =		notebook-${MODPY_EGG_VERSION}
PKGNAME =		jupyter-notebook-${MODPY_EGG_VERSION}

CATEGORIES =		www devel

HOMEPAGE =		http://jupyter.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		www/py-jinja2${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR} \
			devel/py-ipython_genutils${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR} \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.3.0 \
			devel/py-jupyter_client${MODPY_FLAVOR}>=5.0.1 \
			devel/py-nbformat${MODPY_FLAVOR}>=4.3.0 \
			devel/py-nbconvert${MODPY_FLAVOR}>=5.1.1 \
			devel/py-ipykernel${MODPY_FLAVOR}>=4.6.1 \
			devel/ipython${MODPY_FLAVOR}>=5.3.0 \
			www/py-terminado${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-nose-warnings-filters${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# XXX once we have a port of pandoc, we can make docs.

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.else
PKGNAME =		jupyter-notebook${MODPY_MAJOR_VERSION}-${MODPY_EGG_VERSION}
.endif

post-install:
	mv ${PREFIX}/bin/jupyter-bundlerextension{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-nbextension{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-notebook{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/jupyter-serverextension{,${MODPY_BIN_SUFFIX}}
	mv ${PREFIX}/bin/less-watch{,${MODPY_BIN_SUFFIX}}

do-test:
	cd ${WRKSRC} && env LC_CTYPE=C.UTF-8 \
		${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} notebook

.include <bsd.port.mk>
