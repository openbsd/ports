# $OpenBSD: Makefile,v 1.18 2020/07/03 21:13:15 sthen Exp $

COMMENT=	Python library to manipulate gettext files

MODPY_EGG_VERSION =	1.1.0
DISTNAME =	polib-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES=	textproc devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES =	lang/python
MODPY_PI=	Yes

MODPY_SETUPTOOLS = Yes

FLAVOR ?=
FLAVORS =	python3

# only used on test, but poisoned if not in BUILD_DEPENDS
BUILD_DEPENDS =	devel/gettext,-tools

TEST_DEPENDS =	devel/py-coverage${MODPY_FLAVOR}

SUBST_VARS +=	MODPY_MAJOR_VERSION

post-patch:
	${SUBST_CMD} ${WRKSRC}/runtests.sh

do-test:
	@cd ${WRKSRC} && ${MAKE_ENV} ./runtests.sh

.include <bsd.port.mk>
