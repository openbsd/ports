# $OpenBSD: Makefile,v 1.15 2000/03/16 03:36:31 kevlo Exp $

DISTNAME=	unzip540
PKGNAME=	unzip-5.40
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/infozip/src/
NEED_VERSION=	1.210

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
ALL_TARGET=	bsd
MAKE_FILE=	unix/Makefile

WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unzip
	@cd ${WRKSRC};  ${INSTALL_DATA} README COPYING WHERE \
		${PREFIX}/share/doc/unzip

.include <bsd.port.mk>
