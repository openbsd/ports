# $OpenBSD: Makefile,v 1.14 2017/11/01 20:37:52 danj Exp $

COMMENT =	toolkit for generation of output for the web

MODPY_EGG_VERSION =	0.7
DISTNAME =	Genshi-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	1

CATEGORIES =	www

HOMEPAGE =	http://genshi.edgewall.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MASTER_SITES =	http://ftp.edgewall.com/pub/genshi/
MASTER_SITES0 =	${MASTER_SITE_DEBIAN:=main/g/genshi/}

DISTFILES =	${DISTNAME}.tar.gz \
		genshi_0.7-6.debian.tar.xz:0

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_SETUP_ARGS =	--with-speedups

FLAVOR ?=
FLAVORS =	python3

TEST_DEPENDS =	${BUILD_DEPENDS}

PATCH_DIST_STRIP =	-p1

do-distpatch:
	for p in ${WRKDIR}/debian/patches/*.patch; do \
		${PATCH} ${PATCH_DIST_ARGS} < $$p; \
	done

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-genshi
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-genshi
	cd ${WRKSRC}/doc && pax -rw * ${PREFIX}/share/doc/py-genshi
	cd ${WRKSRC}/examples && \
	    pax -rw * ${PREFIX}/share/examples/py-genshi

.include <bsd.port.mk>
