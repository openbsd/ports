COMMENT =	fast, reliable, and secure dependency management for node.js

V =		v1.22.22
REVISION =	0
DISTNAME =	yarn-${V}
PKGNAME =	yarn-${V:S/v//}

CATEGORIES =	devel

HOMEPAGE =	https://yarnpkg.com/lang/en/

# BSD
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/yarnpkg/yarn/releases/download/${V}/

RUN_DEPENDS =	lang/node

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/bin/* ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/
	${INSTALL_DATA} ${WRKSRC}/lib/* ${PREFIX}/lib/

.include <bsd.port.mk>
