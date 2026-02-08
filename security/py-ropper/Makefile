COMMENT=	ROP gadget finder and binary information tool

MODPY_DISTV=	1.13.13
GH_ACCOUNT=	sashs
GH_PROJECT=	Ropper
GH_TAGNAME=	v${MODPY_DISTV}

DISTNAME=	ropper-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security

HOMEPAGE=	https://scoding.de/ropper/

# BSD 3-clauses
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-filebytes \
		devel/capstone/python \
		devel/keystone/python

.include <bsd.port.mk>
