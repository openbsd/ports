# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:11 sthen Exp $

COMMENT=		XML bomb protection for Python stdlib modules

MODPY_EGG_VERSION=	0.5.0
DISTNAME=		defusedxml-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		textproc www
REVISION=		0

# BSD
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
FLAVORS =		python3
FLAVOR ?=

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} && \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
			./tests.py

.include <bsd.port.mk>
