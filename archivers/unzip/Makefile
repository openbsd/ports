# $OpenBSD: Makefile,v 1.16 2000/03/24 22:11:34 espie Exp $

DISTNAME=	unzip540
PKGNAME=	unzip-5.40
CATEGORIES=	archivers
NEED_VERSION=	1.210
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/infozip/src/

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
