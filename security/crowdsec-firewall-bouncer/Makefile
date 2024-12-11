COMMENT =		CrowdSec bouncer written in golang for firewalls

MODGO_MODNAME =		github.com/crowdsecurity/cs-firewall-bouncer
MODGO_VERSION =		v0.0.31

REVISION =		0

DISTNAME =		crowdsec-firewall-bouncer-${MODGO_VERSION}
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/crowdsec-firewall-bouncer
	${INSTALL_DATA} ${WRKSRC}/config/crowdsec-firewall-bouncer.yaml \
		${PREFIX}/share/examples/crowdsec-firewall-bouncer/

.include <bsd.port.mk>
