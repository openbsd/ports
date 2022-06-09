COMMENT=	write distributed self-replicating programs in Python

GH_ACCOUNT=	mitogen-hq
GH_PROJECT=	mitogen
GH_COMMIT=	c0d3deeac571eb36dfccbe5ca2f1579f2aceca2a

MODPY_EGG_VERSION=	0.3.3
DISTNAME=	mitogen-${MODPY_EGG_VERSION}pre0
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

HOMEPAGE=	https://mitogen.networkgenomics.com/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

#MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

FLAVORS=	python3
FLAVOR=		python3

# some (not entirely organised) tests are in the github tree,
# but require various setup including docker)
NO_TEST=	Yes

FIX_EXTRACT_PERMISSIONS= Yes

post-install:
	ln -s ../lib/python${MODPY_VERSION}/site-packages/ansible_mitogen/ \
		${PREFIX}/share/ansible_mitogen

.include <bsd.port.mk>
