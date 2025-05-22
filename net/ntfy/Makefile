COMMENT =	send push notifications to your phone or desktop

MODGO_MODNAME =	heckel.io/ntfy/v2
MODGO_VERSION =	v2.11.0
REVISION =	0

DISTNAME =	ntfy-${MODGO_VERSION}

SITES.ui =	https://openbsd.ports.builders/distfiles/net/ntfy/
DISTFILES.ui =	ntfy-${MODGO_VERSION}-ui.tar.gz
EXTRACT_ONLY +=	ntfy-${MODGO_VERSION}-ui.tar.gz

CATEGORIES =	net

HOMEPAGE =	https://ntfy.sh

MAINTAINER =	Martin Reindl <martin@catai.org>

# Apache-2.0/GPL-2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

WANTLIB +=	c pthread
WRKDIST =	${WRKSRC}

# Stub docs files; build fails because of failure to embed them. App is
# provided as an additional distfile as it requires npm, which assumes online
# builds. Building the docs requires Python mkdocs, not currently ported.
post-extract:
	mv ${WRKDIR}/build ${WRKDIST}/server/site
	mkdir -p ${WRKSRC}/server/docs
	${INSTALL_DATA} ${FILESDIR}/index.html ${WRKSRC}/server/docs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ntfy/
	${INSTALL_DATA} ${WRKSRC}/server/server.yml \
		${PREFIX}/share/examples/ntfy/
.for i in linux-desktop-notifications publish-* ssh-login-alert subscribe-* \
	web-example-eventsource
	${INSTALL_DATA} ${WRKSRC}/examples/$i/* ${PREFIX}/share/examples/ntfy/
.endfor

# Maintainer convenience target for building the UI. Requires jq and esbuild.
# index.html rename and config.js removal taken from upstream's Makefile.
dist: ${FULLDISTDIR}/${DISTNAME_ESC}${EXTRACT_SUFX}
	@set -x; \
	t=`mktemp -d /tmp/ntfy.XXXXXXXXXX`; \
	f=$$t/ntfy-${MODGO_VERSION}-ui.tar.gz; \
	export HOME=$$t LC_CTYPE=C ESBUILD_BINARY_PATH=/usr/local/bin/esbuild; \
	cd $$t; \
	unzip ${FULLDISTDIR}/${DISTNAME_ESC}${EXTRACT_SUFX}; \
	cd ${MODGO_MODNAME_ESC}@${MODGO_VERSION}/web; \
	jq '.packages["node_modules/vite"].dependencies.esbuild |= ">=0.24.0"' \
	    package-lock.json >package-lock.json.tmp; \
	mv package-lock.json.tmp package-lock.json; \
	npm install -dd --include=dev --cache=$$t/npm-cache; \
	old_ulimit_d=$$(ulimit -Sd); \
	ulimit -Sd $$((3 * 1024 * 1024)); \
	npm run build -dd --cache=$$t/npm-cache; \
	ulimit -Sd "$$old_ulimit_d"; \
	mv build/index.html build/app.html; \
	rm build/config.js; \
	pax -wzf $$f build/; \
	rsync $$f distfiles@openbsd.ports.builders:/distfiles/net/ntfy/; \
	cd -; \
	rm -rf $$t

.include "modules.inc"
.include <bsd.port.mk>
