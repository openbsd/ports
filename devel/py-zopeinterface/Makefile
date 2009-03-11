# $OpenBSD: Makefile,v 1.6 2009/03/11 22:00:27 bernd Exp $

COMMENT=	zope.interface package from Zope 3

VERSION=	3.5.0
DISTNAME=	zope.interface-${VERSION}
PKGNAME=	py-zopeinterface-${VERSION}p0
CATEGORIES=	devel

HOMEPAGE=	http://pypi.python.org/pypi/zope.interface

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# Zope Public License
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

EXTRACT_SUFX=	.zip
MASTER_SITES=	http://pypi.python.org/packages/source/z/zope.interface/

MODULES=	lang/python
SUBST_VARS=	VERSION

MODPY_SETUPTOOLS=	Yes

TESTS=	tests/test_advice.py		\
	tests/test_document.py		\
	tests/test_element.py		\
	tests/test_odd_declarations.py	\
	tests/test_sorting.py		\
	tests/test_verify.py		\
	common/tests/test_idatetime.py


do-regress: fake
	for i in ${TESTS}; do \
	echo $$i; env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
		${WRKINST}${MODPY_SITEPKG}/zope/interface/$$i; \
	done

.include <bsd.port.mk>
