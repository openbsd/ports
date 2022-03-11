COMMENT =		framework for analyzing TLS libraries

V =			3.5.0
DISTNAME =		TLS-Attacker-$V
PKGNAME =		${DISTNAME:L}
REVISION =		0

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		security

# Apache2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/RUB-NDS/TLS-Attacker/releases/download/$V/
EXTRACT_SUFX =		.zip

MODULES =		java
MODJAVA_VER =		1.8+
RUN_DEPENDS =		java/javaPathHelper

NO_BUILD =		Yes
NO_TEST =		Yes

TLS_HOME =		${PREFIX}/tls-attacker
SUBST_VARS +=		TLS_HOME

do-install:
	${INSTALL_DATA_DIR} ${TLS_HOME}
	cd ${WRKSRC} && umask 022 && pax -rw . ${TLS_HOME}

.include <bsd.port.mk>
