# $OpenBSD: Makefile,v 1.13 2000/02/22 17:08:34 espie Exp $

DISTNAME=	unzip540
PKGNAME=	unzip-5.40
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.cdrom.com/pub/infozip/src/
NEED_VERSION=	1.210

MAINTAINER=	ports@openbsd.org

ALL_TARGET=	bsd
MAKE_FILE=	unix/Makefile

WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unzip
	@cd ${WRKSRC};  ${INSTALL_DATA} README COPYING WHERE \
		${PREFIX}/share/doc/unzip

.include <bsd.port.mk>
