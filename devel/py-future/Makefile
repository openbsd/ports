COMMENT=	compatibility layer between Python 2 and Python 3

MODPY_EGG_VERSION=	0.18.3
DISTNAME=	future-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel
HOMEPAGE=	http://python-future.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

# py2 needed for chirp, security/floss (via py-pefile/py-viv_utils)
FLAVORS=	python3
FLAVOR?=
MODPY_PYTEST=	Yes

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

.include <bsd.port.mk>
