# $OpenBSD: Makefile,v 1.4 2017/04/23 08:07:17 shadchin Exp $

COMMENT =		IPython kernel for Jupyter

MODPY_EGG_VERSION =	4.6.1
DISTNAME =		ipykernel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

RUN_DEPENDS +=		devel/py-jupyter_client${MODPY_FLAVOR}>=5.0.1 \
			devel/py-traitlets${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/ipython${MODPY_FLAVOR}>=5.1.0 \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-nose-warnings-filters${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-mock
.endif

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} ipykernel

.include <bsd.port.mk>
