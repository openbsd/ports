COMMENT=	Python library to manipulate gettext files

MODPY_DISTV =	1.1.1
DISTNAME =	polib-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES=	textproc devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES =	lang/python
MODPY_PI =	Yes

MODPY_PYBUILD =	setuptools

# only used on test, but poisoned if not in BUILD_DEPENDS
BUILD_DEPENDS =	devel/gettext,-tools

TEST_DEPENDS =	devel/py-coverage

SUBST_VARS +=	MODPY_MAJOR_VERSION

post-patch:
	${SUBST_CMD} ${WRKSRC}/runtests.sh

do-test:
	@cd ${WRKSRC} && ${MAKE_ENV} ./runtests.sh

.include <bsd.port.mk>
