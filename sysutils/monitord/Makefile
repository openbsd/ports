COMMENT=	system monitoring daemon

DISTNAME=	monitord-1.95
CATEGORIES=	sysutils

HOMEPAGE=	https://ristov.github.io/monitord/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/monitord ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/monitord
	${INSTALL_DATA} ${WRKSRC}/monitord.conf \
		${PREFIX}/share/examples/monitord

.include <bsd.port.mk>
