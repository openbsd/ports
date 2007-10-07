# $OpenBSD: Makefile,v 1.1.1.1 2007/10/07 09:53:44 sturm Exp $

COMMENT=	system monitoring daemon

DISTNAME=	monitord-1.93
CATEGORIES=	sysutils

HOMEPAGE=	http://www.estpak.ee/~risto/monitord/

MAINTAINER=	Okan Demirmen <okan@demirmen.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/monitord ${PREFIX}/sbin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/monitord
	${INSTALL_DATA} ${WRKSRC}/monitord.conf \
		${PREFIX}/share/examples/monitord

.include <bsd.port.mk>
