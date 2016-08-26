# $OpenBSD: Makefile,v 1.1.1.1 2016/08/26 10:54:01 czarkoff Exp $

COMMENT =		Subversion client Mercurial extension

MODPY_EGG_VERSION =	1.8.6
DISTNAME =		py-hgsubversion-${MODPY_EGG_VERSION}
CATEGORIES =		devel net

HOMEPAGE =		http://bitbucket.org/durin42/hgsubversion/overview/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://bitbucket.org/durin42/hgsubversion/get/
DISTFILES =		${DISTNAME}{${MODPY_EGG_VERSION}}${EXTRACT_SUFX}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/mercurial \
			devel/subversion,-python
TEST_DEPENDS =		${RUN_DEPENDS}

# Instead of updating WRKDIST manually on every update, just move the directory
post-extract:
	@rm -Rf ${WRKDIST}
	@mv ${WRKDIR}/durin42-hgsubversion-???????????? ${WRKDIST}

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} tests/run.py \
								--bindings=swig

.include <bsd.port.mk>
