COMMENT=	extracts the top level domain (TLD) from the URL given

MODPY_DISTV=	0.13.1
DISTNAME=	tld-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

# MPL 1.1/GPL 2.0/LGPL 2.1
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

# requires fake.py, pytest-codeblock, pytest-ordering (not ported),
# and pytest-cov
NO_TEST=	Yes

.include <bsd.port.mk>
