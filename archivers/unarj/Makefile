# $OpenBSD: Makefile,v 1.11 2001/04/20 17:35:36 brad Exp $
# $FreeBSD: Makefile,v 1.12 1999/02/17 22:25:36 ache Exp $

COMMENT=	"extract files from ARJ archives"

DISTNAME=	unarj-2.43
CATEGORIES=	archivers
NEED_VERSION=	1.384
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"May not charge"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"May not charge"
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unarj
	cd ${WRKSRC}; ${INSTALL_PROGRAM} unarj ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_DATA} unarj.doc technote.doc ${PREFIX}/share/doc/unarj

.include <bsd.port.mk>
