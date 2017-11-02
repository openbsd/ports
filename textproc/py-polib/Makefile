# $OpenBSD: Makefile,v 1.12 2017/11/02 12:57:26 sthen Exp $

COMMENT=	Python library to manipulate gettext files

MODPY_EGG_VERSION =	1.0.6
DISTNAME =	polib-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

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
