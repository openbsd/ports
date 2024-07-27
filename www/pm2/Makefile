COMMENT =		production process manager with a built-in load balancer

GH_ACCOUNT =		Unitech
GH_PROJECT =		pm2
GH_TAGNAME =		v5.4.2

CATEGORIES =		www

HOMEPAGE =		https://pm2.keymetrics.io/

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

# AGPL-3.0
PERMIT_PACKAGE =	Yes

SITES.deps =		https://files.bsd.ac/openbsd-distfiles/
DISTFILES.deps =	pm2-${GH_TAGNAME}.npm-cache.tar.bz2

WANTLIB +=		c pthread

NO_TEST =		Yes

BUILD_DEPENDS =		lang/node
RUN_DEPENDS =		lang/node

deps-cache:
	HOME=${WRKDIR} npm config set cache "${WRKDIR}/npm-cache"
	cd ${WRKSRC} && env HOME=${WRKDIR} npm install --omit=dev

deps-tarball: deps-cache
	cd ${WRKDIR} && \
	gtar cvjSf pm2-${GH_TAGNAME}.npm-cache.tar.bz2 npm-cache

# XXX: we need to do this in post extract as there could be patches for
#      node_modules directory, which isn't created until after the npm install
post-extract: deps-cache

do-build:

do-install:
	cp -a ${WRKSRC} ${PREFIX}/libexec/pm2
	rm -r ${PREFIX}/libexec/pm2/test
	ln -sf ${TRUEPREFIX}/libexec/pm2/bin/pm2 ${PREFIX}/bin/pm2

.include <bsd.port.mk>
