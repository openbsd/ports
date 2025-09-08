COMMENT=	quickly rewrite git repository history

MODPY_DISTV=	2.47.0
DISTNAME=	git-filter-repo-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/newren/git-filter-repo/
SITES=		https://github.com/newren/git-filter-repo/releases/download/v${MODPY_DISTV}/
EXTRACT_SUFX=	.tar.xz

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm

# pypi tarball doesn't have docs, but tar.xz doesn't have files that
# setuptools_scm can use to identify the version, so set it here
MAKE_ENV=	SETUPTOOLS_SCM_PRETEND_VERSION=${MODPY_DISTV}

RUN_DEPENDS=	devel/git
TEST_DEPENDS=	devel/py-coverage

post-install:
	${INSTALL_DATA} ${WRKSRC}/Documentation/man1/git-filter-repo.1 \
		${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/git
	${INSTALL_DATA} ${WRKSRC}/Documentation/html/git-filter-repo.html \
		${PREFIX}/share/doc/git

do-test:
	sed -i s,/bin/bash,/bin/sh, ${WRKSRC}/t/run_tests
	${WRKSRC}/t/run_tests

.include <bsd.port.mk>
