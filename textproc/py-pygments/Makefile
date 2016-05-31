# $OpenBSD: Makefile,v 1.23 2016/05/31 06:06:20 ajacoutot Exp $

COMMENT=	Python syntax highlighter

MODPY_EGG_VERSION = 2.1.3

DISTNAME=	Pygments-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L:S/^/py-/}
CATEGORIES=    	textproc devel

HOMEPAGE=	http://pygments.org/

PKG_ARCH=	*

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/pygmentize ${PREFIX}/bin/pygmentize${MODPY_BIN_SUFFIX}
.endif

do-test:
	cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run.py

.include <bsd.port.mk>
