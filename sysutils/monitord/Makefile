# $OpenBSD: Makefile,v 1.2 2013/03/11 11:41:31 espie Exp $

COMMENT=	system monitoring daemon

DISTNAME=	monitord-1.93
CATEGORIES=	sysutils

HOMEPAGE=	http://www.estpak.ee/~risto/monitord/

MAINTAINER=	Okan Demirmen <okan@demirmen.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/monitord ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/monitord
	${INSTALL_DATA} ${WRKSRC}/monitord.conf \
		${PREFIX}/share/examples/monitord

.include <bsd.port.mk>
