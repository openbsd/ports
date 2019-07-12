# $OpenBSD: Makefile,v 1.29 2019/07/12 20:45:56 sthen Exp $

COMMENT-main=		lint-like code checker for Python code
COMMENT-gui=		GUI for pylint

MODPY_EGG_VERSION=	1.6.5
REVISION-gui=		1
REVISION-main=		1
DISTNAME=		pylint-${MODPY_EGG_VERSION}
PKGNAME-main=		pylint-${MODPY_EGG_VERSION}
PKGNAME-gui=		pylint-gui-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.pylint.org/

# GPL
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=		-main -gui

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS=		devel/py-astroid${MODPY_FLAVOR} \
			devel/py-isort${MODPY_FLAVOR} \
			devel/py-mccabe${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
RUN_DEPENDS-gui=	${MODPY_TKINTER_DEPENDS} \
			devel/pylint${MODPY_FLAVOR}=${MODPY_EGG_VERSION}
TEST_DEPENDS=		devel/py-logilab-common${MODPY_FLAVOR}>=1.3.0

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
FULLPKGNAME-main=	${PKGNAME-main:S/pylint/pylint3/}
FULLPKGPATH-main=	devel/pylint,-main${MODPY_FLAVOR}
FULLPKGNAME-gui=	${PKGNAME-gui:S/pylint/pylint3/}
FULLPKGPATH-gui=	devel/pylint,-gui${MODPY_FLAVOR}
.else
RUN_DEPENDS+=		devel/py-backports-functools-lru-cache \
			devel/py-configparser
.endif

do-test: fake
	cd ${WRKINST}${MODPY_SITEPKG} && env \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		PYLINTHOME=${WRKINST} \
		${MODPY_BIN} -m logilab.common.pytest

post-install:
	rm ${WRKINST}${MODPY_SITEPKG}/pylint/test/unittest_lint.py.orig
.for i in epylint pylint pylint-gui pyreverse symilar
	mv ${PREFIX}/bin/$i{,${MODPY_BIN_SUFFIX}}
.endfor

.include <bsd.port.mk>
