# $OpenBSD: Makefile,v 1.7 2016/10/03 08:48:33 shadchin Exp $

COMMENT =		configuration system for Python applications

MODPY_EGG_VERSION =	4.3.1
DISTNAME =		traitlets-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

RUN_DEPENDS =		devel/py-ipython_genutils${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR}

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-enum34
TEST_DEPENDS +=		devel/py-mock
.endif

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest traitlets

.include <bsd.port.mk>
