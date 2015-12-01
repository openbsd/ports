# $OpenBSD: Makefile,v 1.1.1.1 2015/12/01 22:28:47 edd Exp $

COMMENT =		IPython kernel for Jupyter

MODPY_EGG_VERSION =	4.0.3
DISTNAME =		ipykernel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

RUN_DEPENDS +=		devel/py-jupyter_client \
			devel/py-traitlets
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/ipython>=4.0.0 \
			devel/py-nose \
			devel/py-mock

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC}; LC_CTYPE=en_US.UTF-8 ${LOCALBASE}/bin/nosetests ipykernel

.include <bsd.port.mk>
