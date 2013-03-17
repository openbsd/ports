# $OpenBSD: Makefile,v 1.17 2013/03/17 11:37:51 benoit Exp $

COMMENT=	Python API for advanced date calculations

VERSION =	1.5
DISTNAME=	python-dateutil-${VERSION}
PKGNAME=	${DISTNAME:S/^python-/py-/}
CATEGORIES=    	devel

HOMEPAGE=	http://labix.org/python-dateutil
MAINTAINER =	frantisek holop <minusf@obiit.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://labix.org/download/python-dateutil/

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
