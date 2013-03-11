# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:26 espie Exp $

ONLY_FOR_ARCHS =	i386
SHARED_ONLY =		Yes

COMMENT =	extension module to speed up the execution of Python code

MODPY_EGG_VERSION =	1.6
DISTNAME =		psyco-${MODPY_EGG_VERSION}-src
PKGNAME =		py-psyco-${MODPY_EGG_VERSION}
REVISION =		5

CATEGORIES =	devel

HOMEPAGE =	http://psyco.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=psyco/}

MODULES =	lang/python
MODPY_VERSION ?= 2.5# not ported to python 2.7 yet.

WRKDIST =	${WRKDIR}/psyco-${MODPY_EGG_VERSION}

do-test: fake
	@cd ${WRKSRC}/test && env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${MODPY_BIN} ./test_base.py

.include <bsd.port.mk>
