COMMENT=	write distributed self-replicating programs in Python

GH_ACCOUNT=	mitogen-hq
GH_PROJECT=	mitogen
GH_COMMIT=	a47b9f3631ba3c37bf0410c6a4960c3eec152454

MODPY_EGG_VERSION=	0.3.4
DISTNAME=	mitogen-${MODPY_EGG_VERSION}pre1
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://mitogen.networkgenomics.com/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

#MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

# some (not entirely organised) tests are in the github tree,
# but require various setup including docker)
NO_TEST=	Yes

FIX_EXTRACT_PERMISSIONS= Yes

post-install:
	@echo ansible_mitogen/compat/simplejson is for copying to py2 systems
	@echo compile errors in those files are expected
	ln -s ../lib/python${MODPY_VERSION}/site-packages/ansible_mitogen/ \
		${PREFIX}/share/ansible_mitogen

.include <bsd.port.mk>
