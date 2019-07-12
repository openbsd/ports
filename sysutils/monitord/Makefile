# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:46 sthen Exp $

COMMENT=	system monitoring daemon

DISTNAME=	monitord-1.93
CATEGORIES=	sysutils
REVISION=	0

HOMEPAGE=	http://www.estpak.ee/~risto/monitord/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

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
