COMMENT =	quickly rewrite git repository history

V =		2.38.0

DISTNAME =	git-filter-repo-$V
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/newren/git-filter-repo/

# MIT
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/newren/git-filter-repo/releases/download/v$V/

EXTRACT_SUFX =		.tar.xz

MODULES =		lang/python
MODPY_BUILDDEP =	No

RUN_DEPENDS =		devel/git
TEST_DEPENDS =		devel/py-coverage

NO_BUILD =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/git
	${INSTALL_SCRIPT} ${WRKSRC}/git-filter-repo ${PREFIX}/libexec/git
	${INSTALL_DATA} ${WRKSRC}/Documentation/man1/git-filter-repo.1 \
		${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/git
	${INSTALL_DATA} ${WRKSRC}/Documentation/html/git-filter-repo.html \
		${PREFIX}/share/doc/git
	${INSTALL_DATA_DIR} ${DESTDIR}${MODPY_SITEPKG}
	ln -s ${TRUEPREFIX}/libexec/git/git-filter-repo \
		${DESTDIR}${MODPY_SITEPKG}/git_filter_repo.py

do-test:
	sed -i s,/bin/bash,/bin/sh, ${WRKSRC}/t/run_tests
	${WRKSRC}/t/run_tests

.include <bsd.port.mk>
