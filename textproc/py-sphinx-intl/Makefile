#	$OpenBSD: Makefile,v 1.7 2019/07/12 20:50:13 sthen Exp $

COMMENT =		internationalization helper for Sphinx

MODPY_EGG_VERSION =	0.9.11
PKGNAME =		py-sphinx-intl-${MODPY_EGG_VERSION}
DISTNAME =		sphinx-intl-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-babel${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

NO_TEST =		Yes

.include <bsd.port.mk>
