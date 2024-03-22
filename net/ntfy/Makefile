COMMENT =	send push notifications to your phone or desktop

MODGO_MODNAME =	heckel.io/ntfy/v2
MODGO_VERSION =	v2.9.0

DISTNAME =	ntfy-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://ntfy.sh

MAINTAINER =	Martin Reindl <martin@catai.org>

# Apache-2.0/GPL-2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

WANTLIB +=	c pthread
WRKDIST =	${WRKSRC}

# Stub docs and app HTML files; build fails because of failure to embed them.
# Building the app fails because esbuild SIGILLs. Building the docs requires
# mkdocs, not currently ported.
post-extract:
	mkdir -p ${WRKSRC}/server/site
	${INSTALL_DATA} ${FILESDIR}/app.html ${WRKSRC}/server/site
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

.include "modules.inc"
.include <bsd.port.mk>
