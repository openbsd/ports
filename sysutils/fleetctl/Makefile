# $OpenBSD: Makefile,v 1.4 2019/03/08 18:37:22 sthen Exp $

COMMENT =		controller for fleet, the distributed init system

GH_PROJECT =		fleet
GH_ACCOUNT =		coreos
GH_TAGNAME =		v1.0.0
REVISION =		0

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/go
MODGO_TYPE =		bin

BUILD_DEPENDS =		shells/bash

NO_TEST =		Yes

do-build:
	cd ${WRKSRC} && env GOCACHE=${MODGO_GOCACHE} ${LOCALBASE}/bin/bash build

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/fleetctl ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fleetctl/
	cd ${WRKSRC}/Documentation && umask 022 && pax -rw . \
		${PREFIX}/share/doc/fleetctl/

.include <bsd.port.mk>
