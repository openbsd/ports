# $OpenBSD: Makefile,v 1.2 2013/07/07 20:23:15 jturner Exp $

COMMENT =		typed superset of JavaScript

NPM_VERSION =		0.9.0-1
NPM_NAME =		typescript
PKGNAME =		node-typescript-0.9.0.1
CATEGORIES =		lang

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://www.typescriptlang.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm

NO_TEST =		Yes

# Only the single tsc file should be linked from the bin directory
do-install:
	mkdir ${PREFIX}/lib/node_modules; \
	mv ${WRKDIR}/node_modules/${NPM_NAME} ${PREFIX}/lib/node_modules; \
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/node_modules; \
	chmod 755 ${PREFIX}/lib/node_modules/${NPM_NAME}/bin/tsc
	ln -s ${TRUEPREFIX}/lib/node_modules/${NPM_NAME}/bin/tsc ${PREFIX}/bin/tsc

.include <bsd.port.mk>
