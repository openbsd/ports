COMMENT =	Web vault builds for vaultwarden

CATEGORIES =	www

VERSION =	2023.1.1
MASTER_SITES =	https://github.com/dani-garcia/bw_web_builds/releases/download/v${VERSION}/
DISTNAME =	bw_web_v${VERSION}
PKGNAME =	vaultwarden-web-${VERSION}

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>
# GPLv3
PERMIT_PACKAGE =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes

PREFIX =	${VARBASE}
INSTDIR =	${PREFIX}/vaultwarden

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -R ${WRKDIR}/web-vault ${INSTDIR}

.include <bsd.port.mk>
