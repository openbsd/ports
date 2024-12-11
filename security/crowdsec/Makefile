COMMENT =		lightweight and collaborative security engine

MODGO_MODNAME =		github.com/crowdsecurity/crowdsec
MODGO_VERSION =		v1.6.4

DISTNAME =		crowdsec-${MODGO_VERSION}
CATEGORIES =		security

HOMEPAGE =		https://www.crowdsec.net/

MAINTAINER =		Robert Nagy <robert@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

NO_TEST =		Yes

WRKDIST=		${WRKSRC}

.include "modules.inc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/crowdsec
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/crowdsec/notifications
	cd ${PREFIX}/bin && ln -sf crowdsec-cli cscli
	cd ${WRKSRC}/config && pax -rw . ${PREFIX}/share/examples/crowdsec
.for _p in email http sentinel slack splunk
	${INSTALL_DATA} ${WRKSRC}/cmd/notification-${_p}/${_p}.yaml \
		${PREFIX}/share/examples/crowdsec/notifications
.endfor

.include <bsd.port.mk>
