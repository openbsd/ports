# $OpenBSD: Makefile,v 1.1.1.1 2014/12/19 12:25:40 jca Exp $

COMMENT =		collection of ASN.1 data structures for py-asn1

MODPY_EGG_VERSION =	0.0.5
DISTNAME =		pyasn1-modules-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
PKG_ARCH =		*

HOMEPAGE =		http://pyasn1.sourceforge.net/

# BSD 2-Clause
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pyasn1/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-asn1
TEST_DEPENDS =		devel/py-asn1

MODPY_ADJ_FILES =	tools/*.py

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tools/* ${PREFIX}/bin

do-test:
	cd ${WRKSRC}/test && for f in *.sh; do \
	    ${SETENV} ${MAKE_ENV} PATH=${WRKSRC}/tools:${PATH} \
	        PYTHONPATH=${WRKSRC} sh "$$f" || exit 1; \
	done

.include <bsd.port.mk>
