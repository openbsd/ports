COMMENT=	lil' TOML parser

# this is generally not needed with Python 3.11+ as it is essentially
# a backport of tomllib
MODPY_DISTV=	2.4.1
GH_ACCOUNT=	hukkin
GH_PROJECT=	tomli
GH_TAGNAME=	${MODPY_DISTV}

DISTNAME=	tomli-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/hukkin/tomli

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core

.include <bsd.port.mk>
