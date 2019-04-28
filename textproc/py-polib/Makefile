# $OpenBSD: Makefile,v 1.14 2019/04/28 20:51:56 sthen Exp $

COMMENT=	Python library to manipulate gettext files

MODPY_EGG_VERSION =	1.1.0
DISTNAME =	polib-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES=	textproc devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/python
MODPY_PI=	Yes

MODPY_SETUPTOOLS = Yes

FLAVOR ?=
FLAVORS =	python3

# only used on test, but poisoned if not in BUILD_DEPENDS
BUILD_DEPENDS =	devel/gettext-tools

TEST_DEPENDS =	devel/py-coverage${MODPY_FLAVOR}

SUBST_VARS +=	MODPY_MAJOR_VERSION

post-patch:
	${SUBST_CMD} ${WRKSRC}/runtests.sh

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} ./runtests.sh

.include <bsd.port.mk>
