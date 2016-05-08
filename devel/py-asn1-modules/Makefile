# $OpenBSD: Makefile,v 1.5 2016/05/08 11:50:18 ajacoutot Exp $

COMMENT =		collection of ASN.1 data structures for py-asn1

MODPY_EGG_VERSION =	0.0.8
REVISION =		1
DISTNAME =		pyasn1-modules-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
PKG_ARCH =		*

HOMEPAGE =		http://pyasn1.sourceforge.net/

# BSD 2-Clause
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pyasn1/}

MODULES =		lang/python

FLAVORS =		python3
FLAVOR?=

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR}
TEST_DEPENDS =		${BUILD_PKGPATH}

MODPY_ADJ_FILES =	tools/*.py

post-install:
	cd ${WRKSRC}/tools; for i in *; do \
		${INSTALL_SCRIPT} $$i ${PREFIX}/bin/$$i${MODPY_BIN_SUFFIX}; done

do-test:
	for f in ${WRKSRC}/test/*.sh; do \
		sed -i "s,^python ,${MODPY_BIN} ,g" "$$f" && \
		cd ${WRKSRC}/tools && \
		${SETENV} ${MAKE_ENV} \ PYTHONPATH=${WRKSRC} sh "$$f" || \
		exit 1; \
	done

.include <bsd.port.mk>
