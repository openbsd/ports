# $OpenBSD: Makefile,v 1.23 2001/04/09 18:29:21 avsm Exp $
# $FreeBSD: Makefile,v 1.11 1997/11/25 20:45:45 ache Exp $

COMMENT=	"create/update ZIP files compatible with PKZip(tm)"

DISTNAME=	zip23
PKGNAME=	zip-2.3
CATEGORIES=	archivers
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/infozip/src/ \
		ftp://ftp.info-zip.org/pub/infozip/src/ \
		ftp://ftp.uu.net/pub/archiving/zip/src/

DISTFILES=	zip23.tar.gz zcrypt29.zip

HOMEPAGE=	http://www.freesoftware.com/pub/infozip/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -I. -DUNIX"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

MAKE_FILE=	unix/Makefile

ALL_TARGET=	generic

WRKDIST=	${WRKDIR}/${PKGNAME}

DOCS=	README WHERE

post-extract:
	@mv -f ${WRKDIR}/{crypt.c,crypt.h} ${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/zip
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/zip

.include <bsd.port.mk>
