# $OpenBSD: Makefile,v 1.18 2013/03/11 11:42:46 espie Exp $
COMMENT=	Python syntax highlighter

MODPY_EGG_VERSION = 1.6

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
TEST_DEPENDS=	devel/py-nose

do-test: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run.py

.include <bsd.port.mk>
