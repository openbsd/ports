COMMENT =		powerful curses interface python file manager

MODPY_DISTV =	3.1
DISTNAME =		lfm-${MODPY_DISTV}
REVISION =		5

CATEGORIES =		misc

HOMEPAGE =		https://inigo.katxi.org/devel/lfm/

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

# for pkg_resources
RUN_DEPENDS =		devel/py-setuptools

NO_TEST =		Yes

# fix hardcoded paths
pre-build:
	sed -i 's,/usr,${LOCALBASE},g' ${WRKSRC}/lfm.1
	${SUBST_CMD} ${WRKSRC}/lfm/actions.py

post-install:
	cd ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/usr/local; \
	mv man/man1/* ${PREFIX}/man/man1/; \
	mv share/doc/* ${PREFIX}/share/doc/
	find ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/usr -type d -delete

.include <bsd.port.mk>
