# $OpenBSD: Makefile,v 1.4 2008/03/26 20:35:52 eric Exp $

COMMENT=	zope.interface package from Zope 3

VERSION=	3.3.0
DISTNAME=	zope.interface-${VERSION}
PKGNAME=	py-zopeinterface-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://zope.org/Products/ZopeInterface/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# Zope Public License
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	http://www.zope.org/Products/ZopeInterface/${VERSION}/

MODULES=	lang/python
SUBST_VARS=	VERSION

MODPY_SETUPTOOLS=	Yes

TESTS=	test_advice.py		\
	test_document.py	\
	test_element.py		\
	test_odd_declarations.py\
	test_sorting.py		\
	test_verify.py

do-regress: fake
	for i in ${TESTS}; do \
	echo $$i; env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
		${WRKINST}${MODPY_SITEPKG}/zope/interface/tests/$$i; \
	done

.include <bsd.port.mk>
