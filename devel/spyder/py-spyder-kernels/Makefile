# $OpenBSD: Makefile,v 1.1.1.1 2018/08/29 23:17:17 sthen Exp $

COMMENT=		kernels used by spyder on its ipython console

MODPY_EGG_VERSION=	0.2.4
DISTNAME=		spyder-kernels-${MODPY_EGG_VERSION}
PKGNAME=		${MODPY_PY_PREFIX}${DISTNAME}

HOMEPAGE=		https://github.com/spyder-ide/spyder-kernels

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS +=	devel/py-cloudpickle${MODPY_FLAVOR} \
		devel/py-ipykernel${MODPY_FLAVOR}

# disabled until py-pandas is imported
NO_TEST =	Yes

.include <bsd.port.mk>
