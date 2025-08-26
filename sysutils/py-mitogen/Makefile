COMMENT=	write distributed self-replicating programs in Python

MODPY_DISTV=	0.3.27
DISTNAME=	mitogen-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

HOMEPAGE=	https://mitogen.networkgenomics.com/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# some (not entirely organised) tests are in the github tree,
# but require various setup including docker)
NO_TEST=	Yes

post-install:
	ln -s ../lib/python${MODPY_VERSION}/site-packages/ansible_mitogen/ \
		${PREFIX}/share/ansible_mitogen

.include <bsd.port.mk>
