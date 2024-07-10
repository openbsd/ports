COMMENT =	Web vault builds for vaultwarden

VERSION =	2024.5.1b
DISTNAME =	bw_web_v${VERSION}
PKGNAME =	vaultwarden-web-${VERSION}

CATEGORIES =	www

HOMEPAGE =	https://github.com/dani-garcia/bw_web_builds

MAINTAINER =	Aisha Tammy <aisha@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

SITES =		${HOMEPAGE}/releases/download/v${VERSION}/

NO_BUILD =	Yes
NO_TEST =	Yes

PREFIX =	${VARBASE}
INSTDIR =	${PREFIX}/vaultwarden

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -R ${WRKDIR}/web-vault ${INSTDIR}

.include <bsd.port.mk>
