# $OpenBSD: Makefile,v 1.13 2000/03/12 14:51:57 turan Exp $
# $FreeBSD: Makefile,v 1.11 1997/11/25 20:45:45 ache Exp $

DISTNAME=	zip22
PKGNAME=	zip-2.2
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.cdrom.com/pub/infozip/src/
NEED_VERSION=	1.210

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	generic
MAKE_FILE=	unix/Makefile

WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	@mkdir -p ${PREFIX}/share/doc/zip
	@cd ${WRKSRC} && \
	 ${INSTALL_DATA} README WHERE ${PREFIX}/share/doc/zip

.include <bsd.port.mk>
