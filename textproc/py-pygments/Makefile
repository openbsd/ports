# $OpenBSD: Makefile,v 1.19 2014/11/28 22:25:17 sthen Exp $
COMMENT=	Python syntax highlighter

MODPY_EGG_VERSION = 2.0.1

DISTNAME=	Pygments-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L:S/^/py-/}
CATEGORIES=    	textproc devel

HOMEPAGE=	http://pygments.org/

MODULES=	lang/python
PKG_ARCH=	*

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=P/Pygments/}

MODPY_SETUPTOOLS=	Yes
TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/pygmentize ${PREFIX}/bin/pygmentize${MODPY_BIN_SUFFIX}
.endif

do-test: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run.py

.include <bsd.port.mk>
