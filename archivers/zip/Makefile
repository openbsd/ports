# $OpenBSD: Makefile,v 1.14 2000/03/16 03:33:54 kevlo Exp $
# $FreeBSD: Makefile,v 1.11 1997/11/25 20:45:45 ache Exp $

DISTNAME=	zip23
PKGNAME=	zip-2.3
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/infozip/src/
NEED_VERSION=	1.210

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
ALL_TARGET=	generic
MAKE_FILE=	unix/Makefile

WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zip
	@cd ${WRKSRC} && \
	 ${INSTALL_DATA} README WHERE ${PREFIX}/share/doc/zip

.include <bsd.port.mk>
