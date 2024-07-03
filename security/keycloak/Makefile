COMMENT =	Identity and Access Management solution

CATEGORIES =	security

VERSION =	25.0.1
DISTNAME =	keycloak-${VERSION}

SITES =	https://github.com/keycloak/keycloak/releases/download/${VERSION}/

MAINTAINER =	Aisha Tammy <aisha@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

MODULES =	java
MODJAVA_VER =	21

RUN_DEPENDS =	java/javaPathHelper \
		shells/bash

KEYCLOAK_HOME=	${PREFIX}/keycloak

post-patch:
	${SUBST_CMD} ${WRKSRC}/bin/*.sh

do-install:
	${INSTALL_DATA_DIR} ${KEYCLOAK_HOME}/bin
.for _f in kc.sh kcadm.sh kcreg.sh
	${INSTALL_SCRIPT} ${WRKSRC}/bin/${_f} ${KEYCLOAK_HOME}/bin/${_f:R}
.endfor
	cp -R ${WRKSRC}/bin/client ${KEYCLOAK_HOME}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/keycloak/
	rmdir ${WRKSRC}/conf/truststores
	${INSTALL_DATA} ${WRKSRC}/conf/* ${PREFIX}/share/examples/keycloak/

	cp -R ${WRKSRC}/{lib,providers,themes} ${KEYCLOAK_HOME}/
	cd ${PREFIX}/keycloak && \
		ln -s ${LOCALSTATEDIR}/db/keycloak data && \
		ln -s ${SYSCONFDIR}/keycloak conf
	cd ${PREFIX}/bin && \
		ln -s ${LOCALBASE}/keycloak/bin/kcadm kcadm && \
		ln -s ${LOCALBASE}/keycloak/bin/kcreg kcreg

.include <bsd.port.mk>
