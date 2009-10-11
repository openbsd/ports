# $OpenBSD: Makefile,v 1.11 2009/10/11 20:59:37 jasper Exp $

ONLY_FOR_ARCHS = 	i386 
SHARED_ONLY =		Yes

COMMENT =	extension module to speed up the execution of Python code

MODPY_EGG_VERSION =	1.6
DISTNAME =		psyco-${MODPY_EGG_VERSION}-src
PKGNAME =		py-psyco-${MODPY_EGG_VERSION}p1

CATEGORIES =	devel

HOMEPAGE =	http://psyco.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=psyco/}

MODULES =	lang/python

WRKDIST =	${WRKDIR}/psyco-${MODPY_EGG_VERSION}

do-regress: fake
	@cd ${WRKSRC}/test && env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${MODPY_BIN} ./test_base.py

.include <bsd.port.mk>
