# $OpenBSD: Makefile,v 1.16 2002/12/29 15:15:18 fgsch Exp $
# $FreeBSD: Makefile,v 1.12 1999/02/17 22:25:36 ache Exp $

COMMENT=	"extract files from ARJ archives"

DISTNAME=	unarj-2.43
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	"May not charge"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"May not charge"
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/unarj
	cd ${WRKSRC}; ${INSTALL_PROGRAM} unarj ${PREFIX}/bin
	cd ${WRKSRC}; ${INSTALL_DATA} unarj.doc technote.doc ${PREFIX}/share/doc/unarj

NO_REGRESS=	Yes

.include <bsd.port.mk>
