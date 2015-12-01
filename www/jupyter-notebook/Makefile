# $OpenBSD: Makefile,v 1.1.1.1 2015/12/01 22:37:10 edd Exp $

COMMENT =		web-based notebook for interactive computing

MODPY_EGG_VERSION =	4.0.6
DISTNAME =		notebook-${MODPY_EGG_VERSION}
PKGNAME =		jupyter-notebook-${MODPY_EGG_VERSION}

CATEGORIES =		www devel

HOMEPAGE =		http://jupyter.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS +=		www/py-jinja2 \
			www/py-tornado \
			devel/py-ipython_genutils \
			devel/py-traitlets \
			devel/py-jupyter_core \
			devel/py-jupyter_client \
			devel/py-nbformat \
			devel/py-nbconvert \
			devel/py-ipykernel \
			devel/ipython \
			www/py-terminado

BUILD_DEPENDS =		${RUN_DEPENDS}

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-mock \
			devel/py-nose \
			www/py-requests

MODULES =		lang/python
MODPY_PI =		Yes

# XXX once we have a port of pandoc, we can make docs.

do-test:
	cd ${WRKSRC} && \
		env LC_CTYPE="en_US.UTF-8" PYTHONIOENCODING='utf-8' \
		${LOCALBASE}/bin/nosetests notebook

.include <bsd.port.mk>
