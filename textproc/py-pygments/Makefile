# $OpenBSD: Makefile,v 1.27 2019/04/28 20:51:57 sthen Exp $

COMMENT=	Python syntax highlighter

MODPY_EGG_VERSION = 2.1.3

DISTNAME=	Pygments-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L:S/^/py-/}
CATEGORIES=	textproc devel
REVISION=	1

HOMEPAGE=	http://pygments.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/pygmentize ${PREFIX}/bin/pygmentize${MODPY_BIN_SUFFIX}

do-test:
	cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run.py

.include <bsd.port.mk>
