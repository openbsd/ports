COMMENT =	send push notifications to your phone or desktop

MODGO_MODNAME =	heckel.io/ntfy
MODGO_VERSION =	v1.31.0

DISTNAME =	ntfy-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://ntfy.sh

MAINTAINER =	Martin Reindl <martin@catai.org>

# Apache-2.0/GPL-2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

WANTLIB +=	c pthread
WRKDIST =	${WRKSRC}

# stub doc and app html files; build fails because of failure to embed them.
post-extract:
	mkdir ${WRKSRC}/server/site
	touch ${WRKSRC}/server/site/app.html
	mkdir ${WRKSRC}/server/docs
	touch ${WRKSRC}/server/docs/index.html

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
