# $OpenBSD: Makefile,v 1.9 2000/09/24 07:04:13 brad Exp $

DISTNAME=	queso-980922
CATEGORIES=	net
NEED_VERSION=	1.330
MASTER_SITES=	${MASTER_SITE_BACKUP}

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

GNU_CONFIGURE=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/queso
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/queso
	${INSTALL_DATA} ${WRKSRC}/queso.conf ${PREFIX}/lib/queso/queso.conf.sample
	${INSTALL_MAN} ${FILESDIR}/queso.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/queso ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/Documentation.txt ${PREFIX}/share/doc/queso

.include <bsd.port.mk>
