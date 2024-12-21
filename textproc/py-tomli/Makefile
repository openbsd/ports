COMMENT=	lil' TOML parser

MODPY_DISTV=	2.2.1

# generally not needed with Python 3.11+ as this is essentially
# a backport of tomllib
DISTNAME=	tomli-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/hukkin/tomli

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core
NO_TEST=	Yes

.include <bsd.port.mk>
