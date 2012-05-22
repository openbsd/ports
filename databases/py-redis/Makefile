# $OpenBSD: Makefile,v 1.15 2012/05/22 18:26:35 rpointel Exp $

COMMENT =		Python interface to Redis

MODPY_EGG_VERSION =	2.4.13
DISTNAME =		redis-${MODPY_EGG_VERSION}
PKGNAME =		py-redis-${MODPY_EGG_VERSION}
CATEGORIES =		databases

HOMEPAGE =		http://github.com/andymccurdy/redis-py/
MASTER_SITES =		http://github.com/downloads/andymccurdy/redis-py/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

# avoid possible conflict with the databases/redis distfile
DIST_SUBDIR =           py-redis
WRKDIST =		${WRKDIR}/redis-${MODPY_EGG_VERSION}

REGRESS_DEPENDS =	devel/git \
			databases/redis

REGRESS_IS_INTERACTIVE=Yes # be sure you have a redis server running on localhost
do-regress:
	# fetch tests because they are not included in tarball...
	rm -rf ${WRKSRC}/redis-tmp-tests/ ${WRKSRC}/run_tests ${WRKSRC}/tests
	cd ${WRKSRC} && git clone git://github.com/andymccurdy/redis-py.git redis-tmp-tests
	cd ${WRKSRC}/redis-tmp-tests && git checkout ${MODPY_EGG_VERSION}
	mv ${WRKSRC}/redis-tmp-tests/run_tests ${WRKSRC}/redis-tmp-tests/tests ${WRKSRC}
	rm -rf ${WRKSRC}/redis-tmp-tests/
	# test
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MODPY_BIN} ./run_tests

.include <bsd.port.mk>
