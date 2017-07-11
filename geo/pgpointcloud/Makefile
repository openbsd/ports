# $OpenBSD: Makefile,v 1.1.1.1 2017/07/11 18:50:19 landry Exp $

COMMENT =	point cloud storage extension for PostgreSQL

GH_COMMIT =	0130a1c49dc3f8c3beaa5f033c66691bdc422987
GH_PROJECT =	pointcloud
GH_ACCOUNT =	pgpointcloud
DISTNAME =	pgpointcloud-1.1.0pre0

CATEGORIES =	geo databases

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake
COMPILER =	clang

LIB_DEPENDS =	textproc/libxml
BUILD_DEPENDS =	databases/postgresql,-server \
		devel/cunit
WANTLIB +=	m z xml2

do-test:
	cd ${WRKBUILD} && lib/cunit/cu_tester

.include <bsd.port.mk>
