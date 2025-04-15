COMMENT=	efficiently handle arrays of Booleans

MODPY_DISTV=	3.3.1
DISTNAME=	bitarray-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/ilanschnell/bitarray

# PSF
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}
MODPY_TEST_LINK_SO= Yes
# tests need "make fake", but also tend to fail on the first run 
#
# FileTests.test_mmap_2 failure looks like it's a problem with OS
# that don't have cache coherency between mmap and file access

test: fake

.include <bsd.port.mk>
